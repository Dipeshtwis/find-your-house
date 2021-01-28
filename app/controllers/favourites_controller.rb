class FavouritesController < ApplicationController
  def index
    user = User.find(params[:id])
    render json: user.home
  end

  def create
    favourite = Favourite.new(fav_params)

    if favourite.save
      render json: "we added to your favourites"
    else
      render json: favourite.errors.full_messages
    end
  end

  def destroy
    user = User.find(params[:user_id])
    favourite = user.favourites.find(params[:id])

    if favourite.destroy
      render json: "we deleted it from  your favourites"
    end
  end

  private

  def fav_params
    params.permit(:user_id, :house_id)
  end
end
