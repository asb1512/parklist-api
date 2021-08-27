class User < ActiveRecord::Base
  # has_secure_password
  has_many :desired_parks
  has_many :visited_parks
  has_many :parks, through: :desired_parks
  has_many :parks, through: :visited_parks
end