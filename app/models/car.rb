class Car < ApplicationRecord
  belongs_to :user

  has_many :bookings, dependent: :destroy

  has_one_attached :photo

  validates :model, presence: true
  validates :brand, presence: true
  validates :year, presence: true
  validates :color, presence: true
  validates :category, presence: true
  validates :price, presence: true

end
