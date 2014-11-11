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
        
        league_pg_points = 0
        against_team_pg_points = 0
        all_opponents_pg_points = 0
        league_pg_count = 0
        against_team_pg_count = 0
        all_opponents_pg_count = 0
    
        league_sg_points = 0
        against_team_sg_points = 0
        all_opponents_sg_points = 0
        league_sg_count = 0
        against_team_sg_count = 0
        all_opponents_sg_count = 0
    
        league_sf_points = 0
        against_team_sf_points = 0
        all_opponents_sf_points = 0
        league_sf_count = 0
        against_team_sf_count = 0
        all_opponents_sf_count = 0
    
        league_pf_points = 0
        against_team_pf_points = 0
        all_opponents_pf_points = 0
        league_pf_count = 0
        against_team_pf_count = 0
        all_opponents_pf_count = 0
    
        league_c_points = 0
        against_team_c_points = 0
        all_opponents_c_points = 0
        league_c_count = 0
        against_team_c_count = 0
        all_opponents_c_count = 0
    
    
        @previous_games.each do |game|
          game.player_games.each do |player_game|
            next if player_game.player.team_id == team.id
        
            if player_game.player.position == "PG"
              if game.home_team.id == team.id || game.away_team.id == team.id
                against_team_pg_points += player_game.total_fantasy_points
                against_team_pg_count += player_game.minutes
              elsif @opponents.include?(player_game.player.team)
                all_opponents_pg_points += player_game.total_fantasy_points
                all_opponents_pg_count += player_game.minutes
              end
          
              league_pg_points += player_game.total_fantasy_points
              league_pg_count += player_game.minutes
            elsif player_game.player.position == "SG"
              if game.home_team.id == team.id || game.away_team.id == team.id
                against_team_sg_points += player_game.total_fantasy_points
                against_team_sg_count += player_game.minutes
              elsif @opponents.include?(player_game.player.team)
                all_opponents_sg_points += player_game.total_fantasy_points
                all_opponents_sg_count += player_game.minutes
              end
          
              league_sg_points += player_game.total_fantasy_points
              league_sg_count += player_game.minutes
            elsif player_game.player.position == "SF"
              if game.home_team.id == team.id || game.away_team.id == team.id
                against_team_sf_points += player_game.total_fantasy_points
                against_team_sf_count += player_game.minutes
              elsif @opponents.include?(player_game.player.team)
                all_opponents_sf_points += player_game.total_fantasy_points
                all_opponents_sf_count += player_game.minutes
              end
          
              league_sf_points += player_game.total_fantasy_points
              league_sf_count += player_game.minutes
            elsif player_game.player.position == "PF"
              if game.home_team.id == team.id || game.away_team.id == team.id
                against_team_pf_points += player_game.total_fantasy_points
                against_team_pf_count += player_game.minutes
              elsif @opponents.include?(player_game.player.team)
                all_opponents_pf_points += player_game.total_fantasy_points
                all_opponents_pf_count += player_game.minutes
              end
          
              league_pf_points += player_game.total_fantasy_points
              league_pf_count += player_game.minutes
            elsif player_game.player.position == "C"
              if game.home_team.id == team.id || game.away_team.id == team.id
                against_team_c_points += player_game.total_fantasy_points
                against_team_c_count += player_game.minutes
              elsif @opponents.include?(player_game.player.team)
                all_opponents_c_points += player_game.total_fantasy_points
                all_opponents_c_count += player_game.minutes
              end
          
              league_c_points += player_game.total_fantasy_points
              league_c_count += player_game.minutes
            end
          end
        end
      
      
    
        league_avg_pg_points = (league_pg_points/league_pg_count).round(2)
        against_team_avg_pg_points = (against_team_pg_points/against_team_pg_count).round(2)
        all_opponents_avg_pg_points = (all_opponents_pg_points/all_opponents_pg_count).round(2)
        league_multiplier["PG"][team.name] = (against_team_avg_pg_points/league_avg_pg_points).round(2)
        opponents_multiplier["PG"][team.name] = (against_team_avg_pg_points/all_opponents_avg_pg_points).round(2)
    
    
        league_avg_sg_points = (league_sg_points/league_sg_count).round(2)
        against_team_avg_sg_points = (against_team_sg_points/against_team_sg_count).round(2)
        all_opponents_avg_sg_points = (all_opponents_sg_points/all_opponents_sg_count).round(2)
        league_multiplier["SG"][team.name] = (against_team_avg_sg_points/league_avg_sg_points).round(2)
        opponents_multiplier["SG"][team.name] = (against_team_avg_sg_points/all_opponents_avg_sg_points).round(2)
    
        league_avg_sf_points = (league_sf_points/league_sf_count).round(2)
        against_team_avg_sf_points = (against_team_sf_points/against_team_sf_count).round(2)
        all_opponents_avg_sf_points = (all_opponents_sf_points/all_opponents_sf_count).round(2)
        league_multiplier["SF"][team.name] = (against_team_avg_sf_points/league_avg_sf_points).round(2)
        opponents_multiplier["SF"][team.name] = (against_team_avg_sf_points/all_opponents_avg_sf_points).round(2)
    
        league_avg_pf_points = (league_pf_points/league_pf_count).round(2)
        against_team_avg_pf_points = (against_team_pf_points/against_team_pf_count).round(2)
        all_opponents_avg_pf_points = (all_opponents_pf_points/all_opponents_pf_count).round(2)
        league_multiplier["PF"][team.name] = (against_team_avg_pf_points/league_avg_pf_points).round(2)
        opponents_multiplier["PF"][team.name] = (against_team_avg_pf_points/all_opponents_avg_pf_points).round(2)
    
        league_avg_c_points = (league_c_points/league_c_count).round(2)
        against_team_avg_c_points = (against_team_c_points/against_team_c_count).round(2)
        all_opponents_avg_c_points = (all_opponents_c_points/all_opponents_c_count).round(2)
        league_multiplier["C"][team.name] = (against_team_avg_c_points/league_avg_c_points).round(2)
        opponents_multiplier["C"][team.name] = (against_team_avg_c_points/all_opponents_avg_c_points).round(2)
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
