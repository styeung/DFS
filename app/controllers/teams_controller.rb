class TeamsController < ApplicationController
  def index
    @teams = Team.all
    render :index
  end
  
  def show
    @games = Game.eager_load(:home_team, :away_team, player_games: [ player: [:team]])
                 .previous_games
    
    @team = Team.find(params[:id])
    
    league_pg_points = 0
    against_team_pg_points = 0
    league_pg_count = 0
    against_team_pg_count = 0
    
    league_sg_points = 0
    against_team_sg_points = 0
    league_sg_count = 0
    against_team_sg_count = 0
    
    league_sf_points = 0
    against_team_sf_points = 0
    league_sf_count = 0
    against_team_sf_count = 0
    
    league_pf_points = 0
    against_team_pf_points = 0
    league_pf_count = 0
    against_team_pf_count = 0
    
    league_c_points = 0
    against_team_c_points = 0
    league_c_count = 0
    against_team_c_count = 0
    
    
    @games.each do |game|
      game.player_games.each do |player_game|
        next if player_game.player.team_id == @team.id
        
        if player_game.player.position == "PG"
          if game.home_team.id == @team.id || game.away_team.id == @team.id
            against_team_pg_points += player_game.total_fantasy_points
            against_team_pg_count += 1
          else
            league_pg_points += player_game.total_fantasy_points
            league_pg_count += 1
          end
        elsif player_game.player.position == "SG"
          if game.home_team.id == @team.id || game.away_team.id == @team.id
            against_team_sg_points += player_game.total_fantasy_points
            against_team_sg_count += 1
          else
            league_sg_points += player_game.total_fantasy_points
            league_sg_count += 1
          end
        elsif player_game.player.position == "SF"
          if game.home_team.id == @team.id || game.away_team.id == @team.id
            against_team_sf_points += player_game.total_fantasy_points
            against_team_sf_count += 1
          else
            league_sf_points += player_game.total_fantasy_points
            league_sf_count += 1
          end
        elsif player_game.player.position == "PF"
          if game.home_team.id == @team.id || game.away_team.id == @team.id
            against_team_pf_points += player_game.total_fantasy_points
            against_team_pf_count += 1
          else
            league_pf_points += player_game.total_fantasy_points
            league_pf_count += 1
          end
        elsif player_game.player.position == "C"
          if game.home_team.id == @team.id || game.away_team.id == @team.id
            against_team_c_points += player_game.total_fantasy_points
            against_team_c_count += 1
          else
            league_c_points += player_game.total_fantasy_points
            league_c_count += 1
          end
        end
      end
    end
    
    @league_avg_pg_points = (league_pg_points/league_pg_count).round(2)
    @against_team_avg_pg_points = (against_team_pg_points/against_team_pg_count).round(2)
    @pg_multiplier = (@against_team_avg_pg_points/@league_avg_pg_points).round(2)
    
    @league_avg_sg_points = (league_sg_points/league_sg_count).round(2)
    @against_team_avg_sg_points = (against_team_sg_points/against_team_sg_count).round(2)
    @sg_multiplier = (@against_team_avg_sg_points/@league_avg_sg_points).round(2)
    
    @league_avg_sf_points = (league_sf_points/league_sf_count).round(2)
    @against_team_avg_sf_points = (against_team_sf_points/against_team_sf_count).round(2)
    @sf_multiplier = (@against_team_avg_sf_points/@league_avg_sf_points).round(2)
    
    @league_avg_pf_points = (league_pf_points/league_pf_count).round(2)
    @against_team_avg_pf_points = (against_team_pf_points/against_team_pf_count).round(2)
    @pf_multiplier = (@against_team_avg_pf_points/@league_avg_pf_points).round(2)
    
    @league_avg_c_points = (league_c_points/league_c_count).round(2)
    @against_team_avg_c_points = (against_team_c_points/against_team_c_count).round(2)
    @c_multiplier = (@against_team_avg_c_points/@league_avg_c_points).round(2)
    
    if @games
      render :show
    else
      render json: "Team does not exist"
    end
  end
  
end
