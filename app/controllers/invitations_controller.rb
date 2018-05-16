class InvitationsController < ApplicationController
  before_action :logged_in_user, only: [:new,:create]
  def new
    @invitation = Invitation.new
  end

  def create
    @invitation = current_user.events.new(
                  event: params[:invitation][:event], 
                  invited_user: params[:invitation][:invited_user])

    if @invitation.save
      redirect_to @invitation
    else
      render :new
    end
  end

  def show
    @invitation = User.find(params[:id])
  end

end
