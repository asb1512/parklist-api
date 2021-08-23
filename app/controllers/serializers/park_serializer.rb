class ParkSerializer < ActiveModel::Serializer
  attributes :id, :name, :location, :image, :small_image
end