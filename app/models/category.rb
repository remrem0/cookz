class Category < ApplicationRecord
  has_many :menus, dependent: :destroy

  validates :name, presence: true, inclusion: { in: %w(French, Italian, Japanese, Chinese, Thaï, German, Spanish, Mexican)}
end
