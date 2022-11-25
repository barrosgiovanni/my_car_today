class User < ApplicationRecord
  has_many :bookings, dependent: :destroy
  has_many :cars, dependent: :destroy
  has_many :bookings_as_owner, through: :cars, source: :bookings
  # has_many :cars_as_owner, through: :bookings, source: :car

  validates :first_name, presence: true
  validates :last_name, presence: true

  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
end
