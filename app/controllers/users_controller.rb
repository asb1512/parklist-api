class UsersController < ApplicationController
  def index
    users = User.all
    render json: users
  end

  def create
    user = User.find_by(email: user_params[:email])

    # user is signing up
    if user && user_params.has_key?(:bio)
      render status: 409, message: "User already exists"
    elsif !user && user_params.has_key?(:bio)
      if user_params[:bio].empty?
        render status: 409, message: "User bio missing"
      else
        new_user = User.new(email: user_params[:email], bio: user_params[:bio])
        new_user.save
        render json: new_user, status: 200, message: "User successfully created"
      end
    # user is logging in
    elsif !user_params.has_key?(:bio)
      if user
        render json: user, status: 200, message: "User successfully authenticated"
      elsif !user
        render status: 404, message: "User not found"
      end
    end
  end

  private

  def user_params
    params.require(:user).permit(:email, :username, :bio)
  end
end