class HousesController < ApplicationController
  def create
    houses = House.new(house_params)

    if houses.save
      render json: houses, status: 201
    else
      render json: { error: houses.errors.full_message }, status: 401
    end
  end

  def index
    render json: House.all, status: :ok
  end

  def show
    house = House.find(params[:id])
    if house
      render json: house, status: :ok
    else
      render json: { error: 'No house with this id' }, status: 422
    end
  end

  private

  def house_params
    params.permit(:name, :description, :location, :price, :photo)
  end
end
