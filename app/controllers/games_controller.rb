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
  
  def entire_day_games
    @date = params[:date]
    @entire_day_games = Game.eager_load(:home_team, :away_team, player_games: [player: [:team ]]).where(date: params[:date])
        
    @entire_day_player_games = []
    
    @entire_day_games.each do |game|
      @entire_day_player_games.concat(game.player_games)
    end
    
    @entire_day_player_games.sort! { |x, y| y.total_fantasy_points <=> x.total_fantasy_points }
    render :entire_day_games
  end
  
  def todays_odds
    @game_array = []
    
    page = Nokogiri::HTML(open("http://www.oddsshark.com/nba/odds"))
    rows = page.css(".odds-page-container")
    rows.each do |row|
      date = row.css(".header-time").text
      next if Date.parse(date) > Date.parse(Time.now.to_s)
      
      game_hash = Hash.new { |h,k| h[k] = Hash.new }
      line_break = row.css(".first.teams a").at_css("br")
      line_break.content = ","
      teams = row.css(".first.teams a").text.split(",")
      
      game_hash["date"] = date
      game_hash["first_team"]["name"] = teams[0].downcase!
      game_hash["second_team"]["name"] = teams[1].downcase!
      
      total = row.css(".book.total.book-3 span.total").text
      game_hash["total"] = total
      
      spreads = row.css(".book.spread.book-3 span.spread")
      game_hash["first_team"]["spread"] = spreads[0].text
      game_hash["second_team"]["spread"] = spreads[1].text
      
      @game_array << game_hash
    end
    
    render :todays_odds
  end
  
  private
  
  def load_new_data
    @previous_games = Game.eager_load(:home_team, :away_team, player_games: [player: [ :team ]]).previous_games
  
    @previous_games.each do |game|
      game.create_player_games if game.player_games.empty?
    end
  end
    
end
