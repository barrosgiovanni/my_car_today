class Booking < ApplicationRecord
  belongs_to :user
  belongs_to :car

  validates :pick_up_date, presence: true
  validates :drop_of_date, presence: true
  validates :location, presence: true
  validates :status, presence: true

  # ACCEPT OR REJECT BOOKING #
  enum status: { pending: 0, confirmed: 1, rejected: 2 }

  def confirm!
    self.update(status: 1)
  end

  def reject!
    self.update(status: 2)
  end
end
