class Booking < ApplicationRecord
  belongs_to :user
  belongs_to :car
  validates :location, presence: true
end
