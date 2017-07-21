class Menu < ApplicationRecord
  belongs_to :user
  belongs_to :category
  mount_uploader :picture, PhotoUploader

  has_many :bookings, dependent: :destroy

  validates :name, presence: true, allow_blank: false
  validates :description, presence: true, allow_blank: false
  validates :price, presence: true, allow_blank: false
  validates :guests, presence: true, :inclusion=> { :in => (0..99) }
end
