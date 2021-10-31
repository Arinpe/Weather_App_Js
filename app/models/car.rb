class Car < ApplicationRecord
  include Rails.application.routes.url_helpers
  has_many :appointments
  has_many :users, through: :appointments

  has_one_attached :image

  validates :year, :horsepower, :make, :model, :price, :description, :img_url, presence: true

end
