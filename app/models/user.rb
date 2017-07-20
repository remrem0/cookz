class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  has_many :menus, dependent: :destroy
  has_many :bookings, dependent: :destroy
  has_many :categories, through: :menus

  mount_uploader :avatar, AvatarUploader

  validates :first_name, presence: true, allow_blank: false
  validates :last_name, presence: true, allow_blank: false
  validates :email, presence: true, allow_blank: false
  validates :address, presence: true, allow_blank: false
end
