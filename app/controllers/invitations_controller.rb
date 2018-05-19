class InvitationsController < ApplicationController
  before_action :logged_in_user, only: [:new,:create]
  def new
    @invitation = Invitation.new
  end

  def create
    event = Event.find(params[:invitation][:event])
    user =  User.find_by(name: params[:invitation][:invited_user])

    @invitation = Invitation.new
    
    if user.events_as_attendee.find_by(id: event.id) == nil
      @invitation = current_user.invitations.new(event: event, 
                                                 invited_user: user)
    else
      flash.now[:notice] = "User already invited"
    end

    if @invitation.save
      redirect_to @invitation
    else
      render :new
    end
  end

  def show
    @invitation = Invitation.find(params[:id])
  end
  
end
