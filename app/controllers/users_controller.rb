class UsersController < ApplicationController
  before_action :logged_in_user, only: [:pending_invitation]
  
  def new
    @user = User.new 
  end

  def create
    @user = User.new(name: params[:user][:name], email: params[:user][:email].downcase)

    if @user.save
      redirect_to @user
    else
      render :new
    end
  end

  def show
    @user = current_user
  end

  def pending_invitations
    @invitations = current_user.invitations_received.all
  end

  def accept_invitation
    @invitation = Invitation.find(params[:id])
    current_user.events_as_attendee << @invitation.event
    current_user.save
    redirect_to pending_path
  end

end
