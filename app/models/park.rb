class Park < ActiveRecord::Base
  has_many :desired_parks
  has_many :visited_parks
  has_many :users, through: :desired_parks
  has_many :users, through: :visited_parks
end