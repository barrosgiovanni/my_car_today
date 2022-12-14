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

    @booking.status = 'pending'
    if @booking.save!
      # redirect to views/booking/index where we have all user_id booking list
      redirect_to bookings_path, notice: "Booking successfully created!"
    else
      # redirect to views/cars/index where we have all cars to rent
      render :new, notice: "Unfortonally, your booking is reject. You can choice other car!"
    end
  end

  # redirect to views/booking/index where we have all booking list to a user_id like a guest
  def index
    @bookings = Booking.where("user_id = ?", current_user.id)
  end

  # redirect to views/booking/cars_host where we have all bookings to user_id cars like a host
  def cars_host
    @bookings = current_user.bookings_as_owner
  end

  def confirm
    booking = Booking.find(params[:id])
    booking.confirm!
    redirect_to cars_host_bookings_path, notice: "request confirmed!"
  end

  def reject
    booking = Booking.find(params[:id])
    booking.reject!
    redirect_to cars_host_bookings_path, notice: "request rejected!"
  end

  def destroy
    @booking = Booking.find(params[:id])
    @booking.destroy
    redirect_to car_path(@booking.car)
  end

  private

  def booking_params
    params.require(:booking).permit(:location, :pick_up_date, :drop_of_date, :status)
  end
end
