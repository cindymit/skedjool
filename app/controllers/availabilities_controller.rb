class AvailabilitiesController < ApplicationController
  before_action :set_availability, only: [:show]

  # GET /availabilities
  def index
    @availabilities = Availability.all

    render json: @availabilities
  end

  # GET /availabilities/1
  def show
    render json: @availability
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_availability
      @availability = Availability.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def availability_params
      params.require(:availability).permit(:timezone, :day_of_week, :available_at, :available_until, :coach_id)
    end
end
