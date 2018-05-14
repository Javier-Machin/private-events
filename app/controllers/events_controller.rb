class EventsController < ApplicationController
  before_action :logged_in_user, only: [:create]

  def new
    @event = Event.new
  end

  def create
    @event = current_user.events.create(name: params[:event][:name], 
                                        description: params[:event][:description], 
                                        date: params[:event][:date])

    if @event.save
      redirect_to current_user
    else
      render :new
    end
  end

end
