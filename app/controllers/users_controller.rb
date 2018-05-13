class UsersController < ApplicationController
  def new
    @user = User.new 
  end

  def create
    @user = User.new(name: params[:user][:name], email: params[:user][:email])

    if @user.save
      redirect_to @user
    else
      render :new
    end
  end

  def show
    @user = User.find(params[:id])
    @current_user = current_user
  end

end
