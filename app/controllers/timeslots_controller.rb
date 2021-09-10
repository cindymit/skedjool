class TimeslotsController < ApplicationController
  before_action :set_timeslot, only: [:show, :update, :destroy]

  # GET /timeslots
  def index
    @timeslots = Timeslot.all

    render json: @timeslots
  end

  # GET /timeslots/1
  def show
    render json: @timeslot
  end

  # POST /timeslots
  def create
    @timeslot = Timeslot.new(timeslot_params)

    if @timeslot.save
      render json: @timeslot, status: :created, location: @timeslot
    else
      render json: @timeslot.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /timeslots/1
  def update
    if @timeslot.update(timeslot_params)
      render json: @timeslot
    else
      render json: @timeslot.errors, status: :unprocessable_entity
    end
  end

  # DELETE /timeslots/1
  def destroy
    @timeslot.destroy
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
