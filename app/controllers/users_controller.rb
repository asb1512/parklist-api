class UsersController < ApplicationController
  def index
    users = User.all
    render json: users
  end

  def create
    user = User.find_by(email: params[:email])
    if user
      render status: 200, message: "User already exists"
    else
      new_user = User.new(email: params[:email], bio: params[:bio])
      new_user.save
      render json: new_user, status: 200, message: "User successfully created"
    end
  end
end