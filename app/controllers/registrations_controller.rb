class RegistrationsController < ApplicationController
  def create
    user = User.new(user_params)

    if user.save
      token = JsonWebToken.encode(user.attributes)
      render json: {
        token: token
      }
    else
      render json: {
        error: user.errors.full_messages
      }
    end
  end

  private

  def user_params
    params.permit(:username, :email, :password, :password_confirmation)
  end
end
