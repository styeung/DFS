require 'nokogiri'
require 'open-uri'

class GamesController < ApplicationController
  before_action :load_new_data, only: [:index]
  
  def index
    @games = Game.all
    render :index
  end
  
  def show
    @game = Game.find(params[:id])
    
    if @game
      render :show
    else
      render json: "Game does not exist"
    end
  end
  
  private
  
  def load_new_data
    current_game = Game.first
    
    if current_game.player_games.empty?
      domain = "http://www.basketball-reference.com"
      path = "boxscores"
      game_detail = "#{current_game.date.strftime('%Y%m%d')}0#{current_game.home_team}"
      
      page = Nokogiri::HTML(open("http://www.basketball-reference.com/boxscores/201411040TOR.html"))
      # page = Nokogiri::HTML(open("#{domain}/#{path}/#{game_detail}.html"))
      headers_html =  page.css("th.tooltip")
      @away = page.css("#div_OKC_basic")
      @home = page.css("#div_TOR_basic")
      
    end
  end
  
end
