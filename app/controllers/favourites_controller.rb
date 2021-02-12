class FavouritesController < ApplicationController
  before_action :current_user
  def index
    render json: current_user.homes, status: :ok
  end

  def create
    favourite = Favourite.new(user_id: current_user.id, house_id: params[:house_id])

    if favourite.save
      render json: { favourite: 'we added to your favourites' }, status: 201
    else
      render json: { error: favourite.errors.full_messages }, status: 401
    end
  end
end
