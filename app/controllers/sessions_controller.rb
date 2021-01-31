class SessionsController < ApplicationController
  def create
    user = User.find_by(email: params['email'])

    if user &.try(:authenticate, params['password'])
      data = user.attributes
      token = JsonWebToken.encode(data)
      render json: {
        token: token
      }
    else
      render json: {
        error: 'wrong credentials'
      }
    end
  end

  private

  def user_params
    params.permit(:email, :password)
  end
end
