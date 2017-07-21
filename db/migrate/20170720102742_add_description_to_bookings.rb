class AddDescriptionToBookings < ActiveRecord::Migration[5.0]
  def change
    add_column :bookings, :description, :text
  end
end
