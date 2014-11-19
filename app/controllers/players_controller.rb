class PlayersController < ApplicationController

  def index
    @players = Player.all
    render :index
  end

  def show
    @player = Player.find(params[:id])

    if @player
      render :show
    else
      render json: "Player does not exist"
    end
  end

  def daily_projections
    @previous_games = Game.eager_load(:home_team, :away_team, player_games: [ player: [:team]])
                 .previous_games

    @todays_games = Game.eager_load(:home_team, :away_team, player_games: [ player: [:team]])
                 .todays_games

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
        involved_home_games = Game.eager_load(:home_team, :away_team, player_games: [ player: [:team]])
                                   .previous_games
                                   .where(home_team: team)
        involved_away_games = Game.eager_load(:home_team, :away_team, player_games: [ player: [:team]])
                                   .previous_games
                                   .where(away_team: team)

        @opponents = Set.new

        involved_home_games.each do |game|
          @opponents.add(game.away_team)
        end

        involved_away_games.each do |game|
          @opponents.add(game.home_team)
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
          @positions.each do |position|
            all_opponents[position]["encountered"] = false
            against_team[position]["encountered"] = false
          end


          game.player_games.each do |player_game|
            if player_game.player.team_id == team.id
              all_opponents[player_game.player.position]["points"] += player_game.total_fantasy_points
            else
              if game.home_team_id == team.id || game.away_team_id == team.id
                against_team[player_game.player.position]["points"] += player_game.total_fantasy_points
              elsif @opponents.include?(player_game.player.team)
                all_opponents[player_game.player.position]["points"] += player_game.total_fantasy_points
              end
            end
            league[player_game.player.position]["points"] += player_game.total_fantasy_points
          end

          if game.home_team_id == team.id || game.away_team_id == team.id
            @positions.each do |position|
              all_opponents[position]["count"] += 1
              against_team[position]["count"] += 1
            end
          elsif @opponents.include?(game.home_team) && @opponents.include?(game.away_team)
            @positions.each do |position|
              all_opponents[position]["count"] += 2
            end
          elsif @opponents.include?(game.home_team) || @opponents.include?(game.away_team)
            @positions.each do |position|
              all_opponents[position]["count"] += 1
            end
          end

          @positions.each do |position|
            league[position]["count"] += 2
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
      
      @player_array = []

      @todays_games.each do |game|
        game.home_team.players.each do |player|
          next unless @positions.include?(player.position)
          player_hash = {}
          player_hash["name"] = player.name
          player_hash["position"] = player.position
          player_hash["opponent"] = game.away_team.name
          player_hash["average_fantasy_points"] = player.average_fantasy_points
          player_hash["league_multiplier"] = league_multiplier[player.position][game.away_team.name]
          player_hash["opponents_multiplier"] = opponents_multiplier[player.position][game.away_team.name]
          player_hash["adjusted_fantasy_points_league"] = (player_hash["average_fantasy_points"] * player_hash["league_multiplier"])
          player_hash["adjusted_fantasy_points_opponents"] = (player_hash["average_fantasy_points"] * player_hash["opponents_multiplier"])

          @player_array << player_hash

        end

        game.away_team.players.each do |player|
          next unless @positions.include?(player.position)
          player_hash = {}
          player_hash["name"] = player.name
          player_hash["position"] = player.position
          player_hash["opponent"] = game.home_team.name
          player_hash["average_fantasy_points"] = player.average_fantasy_points
          player_hash["league_multiplier"] = league_multiplier[player.position][game.home_team.name]
          player_hash["opponents_multiplier"] = opponents_multiplier[player.position][game.home_team.name]
          player_hash["adjusted_fantasy_points_league"] = (player_hash["average_fantasy_points"] * player_hash["league_multiplier"])
          player_hash["adjusted_fantasy_points_opponents"] = (player_hash["average_fantasy_points"] * player_hash["opponents_multiplier"])

          @player_array << player_hash
        end
      end

      @player_array.sort! { |x, y| y["adjusted_fantasy_points_opponents"] <=> x["adjusted_fantasy_points_opponents"] }

      render :daily_projections
    else
      render json: "No games today"
    end
  end

end
