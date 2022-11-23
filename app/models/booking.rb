class Booking < ApplicationRecord
  belongs_to :user
  belongs_to :car

  # ACCEPT OR REJECT BOOKING #
  enum status: [ :pending, :confirmed, :rejected ]

  def confirm!
    self.status = "confirmed"
    self.save!
  end

  def reject!
    self.status = "rejected"
    self.save!
  end



  validates :pick_up_date, presence: true
  validates :drop_of_date, presence: true
  validates :location, presence: true
  validates :status, presence: true
end
