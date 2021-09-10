class TimeslotsController < ApplicationController
  before_action :set_timeslot, only: [:show]

  # GET /timeslots
  def index
    @timeslots = Timeslot.all

    render json: @timeslots
  end

  # GET /timeslots/1
  def show
    render json: @timeslot
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_timeslot
      @timeslot = Timeslot.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def timeslot_params
      params.require(:timeslot).permit(:available, :start_time, :availability_id, :coach_id)
    end
end
