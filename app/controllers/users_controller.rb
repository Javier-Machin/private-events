class UsersController < ApplicationController
  before_action :logged_in_user, only: [:pending_invitation]
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
    current_user
  end

  def pending_invitations
    @invitations = current_user.invitations_received.all
  end

end
