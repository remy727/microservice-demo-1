class UsersController < ApplicationController
  def create
    user = User.new(user_params)

    if user.save
      render json: { success: true }, status: :created
    else
      render json: { success: false }, status: :unprocessable_entity
    end
  end

  private

  def user_params
    params.require(:user).permit(:name, :score)
  end
end
