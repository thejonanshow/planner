class EventsController < ApplicationController

  def index
    @events = Event.all
  end

  def new
    @event = Event.new
  end

  def create
    @event = Event.new(event_params)

    if @event.save
      # You can use 'rake routes' to see all the named paths in you application.
      #
      # Prefix Verb   URI Pattern                  Controller#Action
      #     workouts GET    /workouts(.:format)          workouts#index
      #              POST   /workouts(.:format)          workouts#create
      #  new_workout GET    /workouts/new(.:format)      workouts#new
      # edit_workout GET    /workouts/:id/edit(.:format) workouts#edit
      #      workout GET    /workouts/:id(.:format)      workouts#show
      #              PATCH  /workouts/:id(.:format)      workouts#update
      #              PUT    /workouts/:id(.:format)      workouts#update
      #              DELETE /workouts/:id(.:format)      workouts#destroy
      #       events GET    /events(.:format)            events#index <---------
      #              POST   /events(.:format)            events#create
      #    new_event GET    /events/new(.:format)        events#new
      #         root GET    /                            events#index
      redirect_to events_path
    else
      render :new
    end
  end

  private

  def event_params
    params.require(:event).permit(:name, :location, :date_time)
  end

end
