class Booking < ApplicationRecord
  belongs_to :user
  belongs_to :menu

  validates :price, presence: true
  validates :date, presence: true
  validates :status, presence: true, inclusion: { in: ["pending", "confirmed", "denied", "canceled"]
  }
end
