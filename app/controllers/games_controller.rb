class GamesController < ApplicationController
  
  def new
    @game = Game.new(:player_x_id => params["player_x_id"], :player_o_id => params["player_o_id"], :score => 0)
    @users = User.all #this should be just the two users passed from the new game view
    # if @game.save
    #  redirect_to users_path
    # end
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
