class FavouritesController < ApplicationController
  include CurrentUserConcern

  def index
    render json: @current_user.home
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
    favourite = @current_user.favourites.find(params[:id])

    if favourite.destroy
      render json: "we deleted it from  your favourites"
    end
  end

  private

  def fav_params
    params.permit(:user_id, :house_id)
  end
end
