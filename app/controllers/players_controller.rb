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
  
end
