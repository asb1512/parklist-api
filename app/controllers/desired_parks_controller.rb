class DesiredParksController < ApplicationController
  def create
    if desired_params[:desired]
      dp = DesiredPark.new(
        user_id: desired_params[:user_id],
        park_id: desired_params[:park_id])
      dp.save
      render json: dp.user, status: 200, message: "Association successfully created."
    else
      render status: 404, message: "Invalid request"
    end
  end

  private

  def desired_params
    params.require(:info).permit(:desired, :user_id, :park_id)
  end
end