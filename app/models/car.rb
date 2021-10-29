class Car < ApplicationRecord
  include Rails.application.routes.url_helpers
  has_many :appointments
  has_many :users, through: :appointments

  has_one_attached :image

  validates :name, :description, :image, presence: true

  def img_url
    url_for(image)
  end
end
