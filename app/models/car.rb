class Car < ApplicationRecord
  include Rails.application.routes.url_helpers
  has_many :appointments
  has_many :users, through: :appointments

  validates :year, presence: true
  validates :horsepower, presence: true
  validates :make, presence: true
  validates :model, presence: true
  validates :price, presence: true
  validates :description, presence: true
  validates :img_url, presence: true

end
