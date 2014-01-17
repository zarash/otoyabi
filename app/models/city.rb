class City < ActiveRecord::Base
  has_many :users
  has_many :ads
  attr_accessible :latitude, :longitude, :name
end
