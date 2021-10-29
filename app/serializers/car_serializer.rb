class CarSerializer < ActiveModel::Serializer
  attributes :id, :img_url, :name, :description
end
