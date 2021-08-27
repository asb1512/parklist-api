class VisitedParksController < ApplicationController
  def create
    if visited_params[:visited]
      vp = VisitedPark.new(
        user_id: visited_params[:user_id],
        park_id: visited_params[:park_id])
      vp.save
      render json: vp.user, status: 200, message: "Association successfully created."
    else
      render status: 404, message: "Invalid request"
    end
  end

  private

  def visited_params
    params.require(:info).permit(:visited, :user_id, :park_id)
  end
end