class Booking < ApplicationRecord
  belongs_to :user
  belongs_to :car
  validates :pick_up_date, presence: true
  validates :drop_of_date, presence: true
  validates :location, presence: true
  validates :status, presence: true
end
