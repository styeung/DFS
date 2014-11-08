# require 'capybara'
# require 'capybara/poltergeist'

class PlayersController < ApplicationController
  
  include Capybara::DSL
  Capybara.default_driver = :poltergeist
  
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
    visit "https://www.draftkings.com/lineup"
    
    all("#my-lineups").each do |el|
      @title = el.find("div").text
    end
  end
  
end
