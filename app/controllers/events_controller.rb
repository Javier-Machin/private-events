class EventsController < ApplicationController
  before_action :logged_in_user, only: [:create, :new]

  def new
    @event = Event.new
  end

  def index
    @past_events = Event.past
    @future_events = Event.future
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

  def show 
    @event = Event.find(params[:id])
    redirect_to root_path if @event.creator != current_user
  end

end
