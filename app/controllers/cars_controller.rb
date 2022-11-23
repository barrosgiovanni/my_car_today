class CarsController < ApplicationController
  skip_before_action :authenticate_user!, only: [:index, :show]

  def index
    @cars = Car.all
  end


  def show
    @car = Car.find(params[:id])
    @booking = Booking.new
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
