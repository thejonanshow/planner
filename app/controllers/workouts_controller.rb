class WorkoutsController < ApplicationController

  def index
    @workout = Workout.all
  end

  def new
    @workout = Workout.new
  end

  def create
    @workout = Workout.new(workout_params)

    if @workout.save
      redirect_to workouts_path
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

  def workout_params
    params.require(:workout).permit(:name, :time_limit, :event_id)
  end

  def workout
    Workout.find(params[:id])
  end

end
