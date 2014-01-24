class City < ActiveRecord::Base
  has_many :users
  has_many :ads
  has_many :galerys
  attr_accessible :latitude, :longitude, :name
end
