class WorkoutsController < ApplicationController
  before_action :authenticate_user!
  before_action :set_workout, only: [:destroy]

  # GET /workouts
  # GET /workouts.json
  def index
    @workouts = current_user.workouts.all
  end

  # GET /workouts/new
  def new
    @workout = current_user.workouts.new
  end

  # POST /workouts
  # POST /workouts.json
  def create
    @workout = current_user.workouts.new(workout_params)

    respond_to do |format|
      if @workout.save
        format.html { redirect_to workouts_url, notice: 'Workout was successfully created.' }
        format.json { render :show, status: :created, location: @workout }
      else
        format.html { render :new }
        format.json { render json: @workout.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /workouts/1
  # DELETE /workouts/1.json
  def destroy
    @workout.destroy
    respond_to do |format|
      format.html { redirect_to workouts_url, notice: 'Workout was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_workout
      @workout = current_user.workouts.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def workout_params
      params.require(:workout).permit(:user_id, :date, :distance)
    end
end
