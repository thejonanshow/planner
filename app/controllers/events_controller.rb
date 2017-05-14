class EventsController < ApplicationController
  def index
    @events = Event.all
  end

  def new
    @event = Event.new
  end

  def create
    @event = event
    if @event.save
      redirect_to :index
    else
      render :new
    end

  end

  private

  def event
    Event.new(params[:id])
  end

end
