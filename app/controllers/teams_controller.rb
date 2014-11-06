class TeamsController < ApplicationController
  def index
    @teams = Team.all
    render :index
  end
  
  def show
    @team = Team.find(params[:id])
    
    if @team
      render :show
    else
      render json: "Team does not exist"
    end
  end
  
end
