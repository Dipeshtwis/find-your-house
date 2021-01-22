class HousesController < ApplicationController
  def create
    houses = House.new(house_params)

    if houses.save
      render json: houses
    else
      render json: houses.errors.full_message
    end
  end

  def index
    render json: House.all
  end

  def show
    house = House.find(params[:id])
    render json: house if house
  end

  private

  def house_params
    params.permit(:name, :desription, :location, :price, :image)
  end
end