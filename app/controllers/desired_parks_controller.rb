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

  def destroy
    dp = DesiredPark.find_by(id: desired_params[:visited_id])
    user = User.find_by(id: desired_params[:user_id])
    if dp && user
      dp.destroy
      render json: user, status: 200, message: "List item successfully deleted"
    else
      render status: 404, message: "List item not found"
    end
  end

  private

  def desired_params
    params.require(:info).permit(:desired, :desired_id, :user_id, :park_id)
  end
end