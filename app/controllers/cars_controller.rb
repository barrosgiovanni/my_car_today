class CarsController < ApplicationController
  skip_before_action :authenticate_user!, only: :index
  def index
    @cars = Car.all
  end

  def new
    @car = Car.new
  end

  def create
    @car = Car.new(car_params)
    @car.save
    redirect_to cars_path(@car)
  end

  private

  def car_params
    params.require(:car).permit(:price, :brand, :model, :year, :color, :category, photos: [])
  end
end
