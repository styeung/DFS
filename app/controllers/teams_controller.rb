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

    @team_players_list.sort { |x, y| y["median"] <=> x["median"] }

    team = Team.find(params[:id])

    @involved_games = Game.eager_load(:home_team, :away_team, player_games: [ player: [:team]])
                               .previous_games
                               .where("home_team_id = ? OR away_team_id = ?", team.id, team.id)

        
    if @previous_games
      render :show
    else
      render json: "Team does not exist"
    end
  end
  
end
