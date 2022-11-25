class CarsController < ApplicationController
  skip_before_action :authenticate_user!, only: [:index, :show]

  def index
    @cars = Car.all
  end

  def show
    @car = Car.find(params[:id])
    @booking = Booking.new

    # The `geocoded` scope filters only flats with coordinates
    @marker = {
        lat: @car.latitude,
        lng: @car.longitude
        # info_window: render_to_string(partial: "info_window", locals: {car: car})
      }
  end

  def new
    @car = Car.new
  end

  def create
    @car = Car.new(car_params)
    @car.user = current_user
    @car.save
    redirect_to car_path(@car), notice: "Car successfully created!"
  end

  def edit
    @car = Car.find(params[:id])
  end

  def update
    @car = Car.find(params[:id])
    @car.update(car_params)
    @car.save
    redirect_to cars_path, notice: "Car successfully update"
  end

  # redirect to views/cars/list_cars where we have all listing cars from a user_id
  def list_cars
    @cars = current_user.cars
  end

  def destroy
    @car = Car.find(params[:id])
    @car.destroy
    redirect_to cars_path, status: :see_other
  end

  private

  def car_params
    params.require(:car).permit(:address, :price, :brand, :model, :year, :color, :category, :photo)
  end
end
