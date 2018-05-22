class EventsController < ApplicationController
  before_action :logged_in_user, only: [:create, :new]

  def new
    @event = Event.new
  end

  def index
    @events = Event.where(creator_id: current_user.id)
  end

  def create
    @event = current_user.events.new(name: params[:event][:name], 
                                     description: params[:event][:description], 
                                     date: params[:event][:date])

    if @event.save
      redirect_to @event
    else
      render :new
    end
  end

end
