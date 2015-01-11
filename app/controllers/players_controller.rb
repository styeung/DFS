class PlayersController < ApplicationController

  def index
    @players = Player.all
    render :index
  end

  def show
    @player = Player.eager_load(player_games: [:game]).find(params[:id])

    if @player
      @player_games = @player.player_games
      render :show
    else
      render json: "Player does not exist"
    end
  end
  
  def search
    @player = Player.eager_load(player_games: [:game]).find_by_name(player_params[:name])
    
    if @player
      @player_games = @player.player_games
      render :show
    else
      render json: "Player does not exist"
    end
  end
  
  def daily_starting_lineups
    @blacklist = Player.create_blacklist
    
    player_array = Player.retrieve_starting_lineups
    
    @players = Player.where("name IN (?)", player_array).sort { |x, y| x.median_minutes <=> y.median_minutes }
  end
  

  def daily_projections
    @previous_games = Game.eager_load(:home_team, :away_team, player_games: [player: [:team]]).previous_games
       
    @todays_games = Game.eager_load(:home_team, :away_team).todays_games
    
    @all_teams = Team.all
    
    @positions = Set.new([
      "PG",
      "SG",
      "SF",
      "PF",
      "C"
    ])

    if @todays_games.length > 0
      league_multiplier = Hash.new {|h, k| h[k] = Hash.new }
      opponents_multiplier = Hash.new {|h, k| h[k] = Hash.new }

      @all_teams.each do |team|
        involved_games = @previous_games.select { |previous_game| previous_game.teams.include?(team) }
        
        @opponents = Set.new

        involved_games.each do |game|
          @opponents.add(game.away_team)
        end

        league = Hash.new {|h, k| h[k] = Hash.new }
        all_opponents = Hash.new {|h, k| h[k] = Hash.new }
        against_team = Hash.new {|h, k| h[k] = Hash.new }

        @positions.each do |position|
          league[position]["points"] = 0
          league[position]["count"] = 0

          all_opponents[position]["points"] = 0
          all_opponents[position]["count"] = 0

          against_team[position]["points"] = 0
          against_team[position]["count"] = 0
        end

        @previous_games.each do |game|
          game.player_games.each do |player_game|
            next unless @positions.include?(player_game.player.position)
            
            if player_game.team_id == team.id
              all_opponents[player_game.player.position]["points"] += player_game.total_fantasy_points
              all_opponents[player_game.player.position]["count"] += player_game.minutes
            else
              if game.home_team_id == team.id || game.away_team_id == team.id
                against_team[player_game.player.position]["points"] += player_game.total_fantasy_points
                against_team[player_game.player.position]["count"] += player_game.minutes
              elsif @opponents.include?(player_game.team)
                all_opponents[player_game.player.position]["points"] += player_game.total_fantasy_points
                all_opponents[player_game.player.position]["count"] += player_game.minutes
              end
            end
            league[player_game.player.position]["points"] += player_game.total_fantasy_points
            league[player_game.player.position]["count"] += player_game.minutes
          end

        end

        
        @positions.each do |position|
          league[position]["avg_points"] = (league[position]["points"]/league[position]["count"]).round(2)
          against_team[position]["avg_points"] = (against_team[position]["points"]/against_team[position]["count"]).round(2)
          all_opponents[position]["avg_points"] = (all_opponents[position]["points"]/all_opponents[position]["count"]).round(2)

          league_multiplier[position][team.name] = (against_team[position]["avg_points"]/league[position]["avg_points"]).round(2)
          opponents_multiplier[position][team.name] = (against_team[position]["avg_points"]/all_opponents[position]["avg_points"]).round(2)
        end
      
      end
      
      blacklist = Player.create_blacklist
      
      @player_array = []

      @todays_games.each do |game|
        game.teams.each do |team|
          team.players.each do |player|
            player_hash = {}
            player_hash["id"] = player.id
            player_hash["name"] = player.name
            player_hash["position"] = player.position
            player_hash["opponent_id"] = game.other_team(team).id
            player_hash["opponent"] = game.other_team(team).name
            player_hash["average_fantasy_points"] = player.average_fantasy_points.round(2)
            player_hash["expected_fantasy_points"] = player.expected_fantasy_points.round(2)
            player_hash["average_fantasy_points_per_minute"] = player.fantasy_points_per_minute
            player_hash["median_minutes"] = player.median_minutes
          
            point_history = player.point_history

            unless point_history.empty?
              squared_differences = point_history.map { |el| (el - player.average_fantasy_points)**2 }
              player_hash["stdev"] = Math.sqrt(squared_differences.inject { |sum, el| sum + el }/point_history.length).round(2)
            else
              player_hash["stdev"] = 0
            end
          
            player_hash["stdev_normalized"] = (player_hash["stdev"] / player_hash["expected_fantasy_points"]).round(2)
            
            player_hash["opponents_multiplier"] = @positions.include?(player.position) ? opponents_multiplier[player.position][game.other_team(team).name] : 1
            
            player_hash["adjusted_fantasy_points_opponents"] = (player_hash["expected_fantasy_points"] * player_hash["opponents_multiplier"]).round(2)
          
            unless blacklist[player_hash["name"]].nil?
              player_hash["status"] = blacklist[player_hash["name"]]
            end
        
            @player_array << player_hash
          end
        end
      end

      @player_array.sort! { |x, y| y["adjusted_fantasy_points_opponents"] <=> x["adjusted_fantasy_points_opponents"] }

      render :daily_projections
    else
      render json: "No games today"
    end
  end
  
  def player_params
    params.require(:player).permit(:name)
  end

end
