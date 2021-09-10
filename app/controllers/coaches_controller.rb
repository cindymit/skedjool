class CoachesController < ApplicationController
  before_action :set_coach, only: [:show]

  # GET /coaches
  def index
    @coaches = Coach.all

    render json: @coaches
  end

  # GET /coaches/1
  def show
    render json: @coach
  end

  # POST /coaches
  def create
    @coach = Coach.new(coach_params)

    if @coach.save
      render json: @coach, status: :created, location: @coach
    else
      render json: @coach.errors, status: :unprocessable_entity
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_coach
      @coach = Coach.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def coach_params
      params.require(:coach).permit(:name)
    end
end
