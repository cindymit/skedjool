class UsersController < ApplicationController
  before_action :set_user, only: [:new]

  # POST /users
  def create
    @user = User.new(name: user_params[:name])

    if @user.save
      session[:user_id] = user.id
      render json: @user, status: :created
    else
      @user = user
      render action: :new
      render json: @user.errors, status: :unprocessable_entity
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_user
      @user = User.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def user_params
      params.require(:user).permit(:name)
    end
end
