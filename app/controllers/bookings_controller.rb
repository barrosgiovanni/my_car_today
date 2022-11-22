class BookingsController < ApplicationController
  def new
    @car = Car.find(params[:car_id])
    @booking = Booking.new
  end

  def create
    @booking = Booking.new(booking_params)
    @booking.car = @car
    if @booking.save
      redirect_to root_path
    else
      render :new
    end
  end

  def destroy
    @booking = Booking.find(params[:id])
    @booking.destroy
    redirect_to car_path(@booking.car)
  end

  private

  def booking_params
    params.require(:booking).permit(:location, :status, :pick_up_date, :drop_of_date)
  end
end
