class BookingsController < ApplicationController
  def new
    @menu = Menu.find(params[:menu_id])
    @booking = Booking.new(menu_id: params[:menu_id])
  end

  def create

    booking_date = DateTime.new(*params["booking"]["date"].values.map(&:to_i))
    @booking = Booking.new(booking_params)

    @menu = Menu.find(params[:menu_id])
    @booking.menu = @menu
    @booking.date = booking_date
    @booking.price = @menu.guests*@menu.price
    @booking.user = current_user
    @booking.save
    # redirect_to account_booking_path(@booking) ---- to be added
  end

  def update
  end

  private

  def booking_params
    params.require(:booking).permit(:description)
  end

end
