class BookingsController < ApplicationController
  def new
    @car = Car.find(params[:car_id])
    @booking = Booking.new
  end

  def create
    @car = Car.find(params[:car_id])
    @booking = Booking.new(booking_params)
    @booking.car = @car
    @booking.user = current_user
    if @booking.save
      redirect_to root_path
    else
      render :new
    end
  end

  private

  def booking_params
    params.require(:booking).permit(:pick_up_date, :drop_of_date, :location, :status)
  end
end
