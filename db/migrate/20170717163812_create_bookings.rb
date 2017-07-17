class CreateBookings < ActiveRecord::Migration[5.0]
  def change
    create_table :bookings do |t|
      t.datetime :date
      t.integer :price
      t.string :status
      t.references :user, foreign_key: true
      t.references :menu, foreign_key: true

      t.timestamps
    end
  end
end
