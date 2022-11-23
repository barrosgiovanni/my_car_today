class Booking < ApplicationRecord
  belongs_to :user
  belongs_to :car

  # enum status: [ :pending, :confirmed, :rejected ]

  # def notify_host(force = true)
  #   @user = User.find(self.car[:user_id])

  #   # Don't send the message if we have more than one or we aren't being forced
  #   if @user.pending_reservations.length > 1 or !force
  #     return
  #   else
  #     message = "You have a new reservation request from #{self.name} for #{self.car.description}:

  #     '#{self.message}'

  #     Reply [accept] or [reject]."

  #     @user.send_message_via_email(message)
  #   end
  # end

  # def confirm!
  #   self.status = "confirmed"
  #   self.save!
  # end

  # def reject!
  #   self.status = "rejected"
  #   self.save!
  # end

  # def notify_user
  #   @user = User.find_by(email: self.email)

  #   if self.status_changed? && (self.status == "confirmed" || self.status == "rejected")
  #     message = "Your recent request to rent a #{self.car.description} was #{self.status}."
  #     @user.send_message_via_email(message)
  #   end
  # end

  validates :pick_up_date, presence: true
  validates :drop_of_date, presence: true
  validates :location, presence: true
  validates :status, presence: true
end
