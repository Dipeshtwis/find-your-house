class SessionsController < ApplicationController
  def create
    user = User.find_by(email: params['email'])
      .try(:authenticate, params['password'])

    if user
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
end
