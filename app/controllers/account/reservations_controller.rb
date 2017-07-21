class Account::ReservationsController < ApplicationController
  def index
    # Let's anticipate on next week (with login)
    @user = current_user
    @bookings = Booking.where(user: @user)

    def update
      @user = current_user

      @booking = Booking.find(params[:id])
      @booking.update(booking_params)
      @booking.save

      redirect_to account_reservation_path
    end

  def confirm
    @booking = Booking.find(params[:id])
    @booking.status = "confirmed"

    if @booking.save
      respond_to do |format|
        format.html { redirect_to account_reservations_path }
        format.js  # <-- will render `app/views/account/reservations/confirm.js.erb`
      end
    else
      respond_to do |format|
        format.html { render 'reservations/index' }
        format.js  # <-- idem
      end
    end
  end

  def cancel
    @booking = Booking.find(params[:id])
    @booking.status = "cancelled"

    if @booking.save
      respond_to do |format|
        format.html { redirect_to account_reservations_path }
        format.js  # <-- will render `app/views/account/reservations/confirm.js.erb`
      end
    else
      respond_to do |format|
        format.html { render 'reservations/index' }
        format.js  # <-- idem
      end
    end
  end

end
end
