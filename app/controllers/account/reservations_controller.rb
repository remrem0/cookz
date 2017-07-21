class Account::ReservationsController < ApplicationController
  def index
    # Let's anticipate on next week (with login)
    @user = current_user
    @bookings = Booking.where(user: @user)

    def accepted!

    end
  end

end
