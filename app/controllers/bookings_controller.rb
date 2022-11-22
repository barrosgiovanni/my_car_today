class BookingsController < ApplicationController
 # tem car e user_id
  # substituir LIST por ???

  def new
    @car = Car.find(params[:car_id])
    @booking = Booking.new
  end

  # def create
  #   @c = Booking.new(booking_params)
  #   @list = List.find(params[:list_id])
  #   @booking.list = @list
  #   if @booking.save
  #     redirect_to list_path(@list)
  #   else
  #     @bookmark = Booking.new
  #     render "lists/show", status: :unprocessable_entity
  #   end
  # end

  # def destroy
  #   @booking = Booking.find(params[:id])
  #   @booking.destroy
  #   redirect_to list_path(@booking.list)
  # end

  private

  def booking_params
    params.require(:booking).permit(:location, :status)
  end
end
