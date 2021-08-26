class UsersController < ApplicationController
  def index
    users = User.all
    render json: users
  end

  def create
    user = User.find_by(email: user_params[:email])
    if user
      render status: 409, message: "User already exists"
    else
      new_user = User.new(email: user_params[:email], bio: user_params[:bio])
      new_user.save
      render json: new_user, status: 200, message: "User successfully created"
    end
  end

  private

  def user_params
    params.require(:user).permit(:email, :username, :bio)
  end
end