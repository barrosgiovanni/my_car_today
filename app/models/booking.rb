class Booking < ApplicationRecord
  belongs_to :user
  belongs_to :car

  validates :pick_up_date, presence: true
  validates :drop_of_date, presence: true
  validates :location, presence: true
  validates :status, presence: true

  # ACCEPT OR REJECT BOOKING #
  enum status: { pending: 0, confirmed: 0, rejected:0 }

  def confirm!
    self.status = "confirmed"
    self.save!
  end

  def reject!
    self.status = "rejected"
    self.save!
  end
end
