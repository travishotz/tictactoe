class UsersController < ApplicationController
  
  def create
    @user = User.create(params[:user])
    if @user.save
      redirect_to users_path
    else
      render 'new'
    end
  end
  
  def index
    @users = User.all.sort{|u1,u2| u1.wins.size <=> u2.wins.size}
  end
  
  def new
    @user = User.new(params[:user])
  end
  
  def show
    @user = User.find(params[:id])
  end
end
