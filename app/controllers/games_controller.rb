class GamesController < ApplicationController
  
  def new
    @game = Game.new(:player_x_id => params["player_x_id"], :player_o_id => params["player_o_id"])
  end
  
  def create
    @game = Game.create(params[:game])
  end
  
end
