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

  def destroy
    vp = VisitedPark.find_by(id: visited_params[:visited_id])
    user = User.find_by(id: visited_params[:user_id])
    if vp && user
      vp.destroy
      render json: user, status: 200, message: "List item successfully deleted"
    else
      render status: 404, message: "List item not found"
    end
  end

  private

  def visited_params
    params.require(:info).permit(:visited, :visited_id, :user_id, :park_id)
  end
end