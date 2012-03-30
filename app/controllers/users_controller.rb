class UsersController < ApplicationController
  
  def create
    User.create(params[:user])
  end
  
  def index
    @users = User.all.sort{|u1,u2| u1.wins.size <=> u2.wins.size}
  end
  
end
