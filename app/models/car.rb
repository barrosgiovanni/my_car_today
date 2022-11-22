class Car < ApplicationRecord
  belongs_to :user, optional: true
  has_many :bookings, dependent: :destroy

  has_many_attached :photos
end
