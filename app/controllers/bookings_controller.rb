class BookingsController < ApplicationController
  def new
    @booking = Booking.new(menu_id: params[:menu_id])
  end

  def create
    @booking = Booking.new(booking_params)
    @booking.save
    redirect_to account_booking_path(@booking)
  end

private

  def booking_params
    params.require(:booking).permit(:description)
  end

end
