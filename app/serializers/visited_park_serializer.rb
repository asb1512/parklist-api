class VisitedParkSerializer < ActiveModel::Serializer
  attributes :id, :park_id
  # belongs_to :park, serializer: ParkSerializer
end