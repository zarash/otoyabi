class City < ActiveRecord::Base
	has_many :users
  attr_accessible :latitude, :longitude, :name
end
