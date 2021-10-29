class Appointment < ApplicationRecord
  belongs_to :user
  belongs_to :car

  validates :user_id, :car_id, :date, :city, presence: true
end
