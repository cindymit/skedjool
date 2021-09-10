class CoachesController < ApplicationController
  before_action :set_coach, only: [:show]

  # GET /coaches
  def index
    @coaches = Coach.all

    render json: @coaches
  end

  # GET /coaches/1
  def show
    @coach = Coach.includes(:availabilities).find(params[:id])
    @user = User.find(session[:user_id])
    render json: @coach
  end

    # Only allow a list of trusted parameters through.
    def coach_params
      params.require(:coach).permit(:name)
    end
end
