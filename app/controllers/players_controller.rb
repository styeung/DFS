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
            player_hash["average_fantasy_points_per_minute"] = player.fantasy_points_per_minute
            player_hash["median_minutes"] = player.median_minutes
            player_hash["expected_fantasy_points"] = (player.fantasy_points_per_minute * player.median_minutes).round(2)

            point_history = player.point_history

            unless point_history.empty?
              squared_differences = point_history.map { |el| (el - player.average_fantasy_points)**2 }
              player_hash["stdev"] = Math.sqrt(squared_differences.inject { |sum, el| sum + el }/point_history.length).round(2)
            else
              player_hash["stdev"] = 0
            end
          
            player_hash["stdev_normalized"] = (player_hash["stdev"] / player_hash["average_fantasy_points"]).round(2)

            unless blacklist[player_hash["name"]].nil?
              player_hash["status"] = blacklist[player_hash["name"]]
            end
        
            @player_array << player_hash
          end
        end
      end

      @player_array.sort! { |x, y| y["expected_fantasy_points"] <=> x["expected_fantasy_points"] }

      render :daily_projections
    else
      render json: "No games today"
    end
  end
  
  def player_params
    params.require(:player).permit(:name)
  end

end
