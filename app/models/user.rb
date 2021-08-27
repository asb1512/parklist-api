class User < ActiveRecord::Base
  # has_secure_password
  # has_and_belongs_to_many :parks
  # has_one :visited_park
  # has_one :desired_park
  has_many :desired_parks
  has_many :visited_parks
  has_many :parks, through: :desired_parks
  has_many :parks, through: :visited_parks
end