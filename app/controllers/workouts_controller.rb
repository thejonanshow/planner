class WorkoutsController < ApplicationController

  def index
    @workout = Workout.all
  end

  def new
    @workout = Workout.new
  end

  def create
    @workout = Workout.new(new_params)

    if @workout.save
      redirect_to :index
    else
      render :new
    end
  end

  def show
    @workout = workout
  end

  def edit
    @workout = workout
  end

  private

  def new_params
    params.require(:workout).permit(:name, :duration, :event_id)
  end

  def workout
    Workout.find(params[:id])
  end

end
