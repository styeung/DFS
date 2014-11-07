require 'nokogiri'
require 'open-uri'

class GamesController < ApplicationController
  before_action :load_new_data, only: [:index]
  
  def index
    render :index
  end
  
  def show
    @game = Game.eager_load(:home_team, :away_team, player_games: [:player]).find(params[:id])
    @home_team_players = []
    @away_team_players = []
    
    @game.player_games.each do |player_game|
      if player_game.player.team_id == @game.home_team_id
        @home_team_players << player_game
      elsif player_game.player.team_id == @game.away_team_id
        @away_team_players << player_game
      end
    end
        
    if @game
      render :show
    else
      render json: "Game does not exist"
    end
  end
  
  private
  
  def load_new_data
    @previous_games = Game.eager_load(:home_team, :away_team, player_games: [:player]).previous_games
    
    @previous_games.each do |game|
      game.create_player_games if game.player_games.empty?
    end
  end
  
end
