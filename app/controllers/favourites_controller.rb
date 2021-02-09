class FavouritesController < ApplicationController
  before_action :current_user
  def index
    render json: current_user.homes
  end

  def create
    favourite = Favourite.new(user_id: current_user.id, house_id: params[:house_id])

    if favourite.save
      render json: { favourite: 'we added to your favourites'}, status: 201
    else
      render json: { error: favourite.errors.full_messages }
    end
  end

  def destroy
    favourite = current_user.favourites.find(params[:id])

    render json: 'we deleted it from  your favourites' if favourite.destroy
  end
end
