class UserSerializer < ActiveModel::Serializer
  attributes :id, :email, :bio, :admin
  has_many :desired_parks, serializer: DesiredParkSerializer
  has_many :visited_parks, serializer: VisitedParkSerializer
end