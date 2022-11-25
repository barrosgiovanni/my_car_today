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

  # add to not repeat the process when we change different columns ex. model, colour...
  geocoded_by :address
  after_validation :geocode, if: :will_save_change_to_address?
end
