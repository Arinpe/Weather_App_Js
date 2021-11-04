class Appointment < ApplicationRecord
  belongs_to :user
  belongs_to :car, foreign_key: :car_id

  validates :user_id, :car_id, :date, :city, presence: true
end
