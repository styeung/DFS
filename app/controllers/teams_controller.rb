class TeamsController < ApplicationController
  def index
    @teams = Team.all
    
    render :index
  end
  
  def show
    @previous_games = Game.eager_load(:home_team, :away_team, player_games: [ player: [:team]])
                 .previous_games

    @positions = Set.new([
      "PG",
      "SG",
      "SF",
      "PF",
      "C"
    ])

    league_multiplier = Hash.new {|h, k| h[k] = Hash.new }
    opponents_multiplier = Hash.new {|h, k| h[k] = Hash.new }

    @team = Team.find(params[:id])

    @team_players = @team.players.sort { |x, y| y.average_fantasy_points <=> x.average_fantasy_points }

    @team_players_list = []

    @team_players.each do |player|
      point_history = player.point_history
      point_history_length = point_history.length

      if point_history_length > 0
        team_players_hash = {}

        team_players_hash["id"] = player.id
        team_players_hash["name"] = player.name
        team_players_hash["position"] = player.position
        team_players_hash["average"] = point_history.inject { |sum, el| sum + el }/point_history_length
        
        team_players_hash["median"] = player.median_fantasy_points

        squared_differences = point_history.map { |el| (el - team_players_hash["average"])**2 }

        team_players_hash["stdev"] = Math.sqrt(squared_differences.inject { |sum, el| sum + el }/point_history_length).round(2)

        @team_players_list << team_players_hash
      end
    end

    @team_players_list.sort { |x, y| y["average"] <=> x["average"] }

    team = Team.find(params[:id])

    @involved_games = Game.eager_load(:home_team, :away_team, player_games: [ player: [:team]])
                               .previous_games
                               .where("home_team_id = ? OR away_team_id = ?", team.id, team.id)
                               
    @opponents = Set.new

    @involved_games.each do |game|
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
        if player_game.player.team_id == team.id
          all_opponents[player_game.player.position]["points"] += player_game.total_fantasy_points
          all_opponents[player_game.player.position]["count"] += player_game.minutes
        else
          if game.home_team_id == team.id || game.away_team_id == team.id
            against_team[player_game.player.position]["points"] += player_game.total_fantasy_points
            against_team[player_game.player.position]["count"] += player_game.minutes
          elsif @opponents.include?(player_game.player.team)
            all_opponents[player_game.player.position]["points"] += player_game.total_fantasy_points
            all_opponents[player_game.player.position]["count"] += player_game.minutes
          end
        end

        league[player_game.player.position]["points"] += player_game.total_fantasy_points
        league[player_game.player.position]["count"] += player_game.minutes
      end

      # if game.home_team_id == team.id || game.away_team_id == team.id
#         @positions.each do |position|
#           all_opponents[position]["count"] += 1
#           against_team[position]["count"] += 1
#         end
#       elsif @opponents.include?(game.home_team) && @opponents.include?(game.away_team)
#         @positions.each do |position|
#           all_opponents[position]["count"] += 2
#         end
#       elsif @opponents.include?(game.home_team) || @opponents.include?(game.away_team)
#         @positions.each do |position|
#           all_opponents[position]["count"] += 1
#         end
#       end
#
#       @positions.each do |position|
#         league[position]["count"] += 2
#       end
    end

    
    @positions.each do |position|
      league[position]["avg_points"] = (league[position]["points"]/league[position]["count"]).round(2)
      against_team[position]["avg_points"] = (against_team[position]["points"]/against_team[position]["count"]).round(2)
      all_opponents[position]["avg_points"] = (all_opponents[position]["points"]/all_opponents[position]["count"]).round(2)

      league_multiplier[position][team.name] = (against_team[position]["avg_points"]/league[position]["avg_points"]).round(2)
      opponents_multiplier[position][team.name] = (against_team[position]["avg_points"]/all_opponents[position]["avg_points"]).round(2)
    end

    @league = league
    @against_team = against_team
    @all_opponents = all_opponents
    @league_multiplier = league_multiplier
    @opponents_multiplier = opponents_multiplier

        
    if @previous_games
      render :show
    else
      render json: "Team does not exist"
    end
  end
  
end
