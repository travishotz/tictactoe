class GamesController < ApplicationController
  
  def new
    @game = Game.new(:player_x_id => params["player_x_id"], :player_o_id => params["player_o_id"])
  end
  
  def create
    @game = Game.create(params[:game])
    redirect_to new_game_path # this is a bit messy/nonfunctional
  end
  
  def index
    @users = User.all
    @game = Game.new(:player_x_id => params["player_x_id"], :player_o_id => params["player_o_id"])
  end
  
end
