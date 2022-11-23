class Car < ApplicationRecord
  belongs_to :user, dependent: :destroy
  has_many :bookings, dependent: :destroy
  validates :model, presence: true
  validates :brand, presence: true
  validates :year, presence: true
  validates :color, presence: true
  validates :category, presence: true
  validates :price, presence: true

  has_many_attached :photos
end
