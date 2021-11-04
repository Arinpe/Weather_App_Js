class CarSerializer < ActiveModel::Serializer
  attributes :id, :img_url, :make, :description, :model, :horsepower, :year, :price

  has_many :appointments
end
