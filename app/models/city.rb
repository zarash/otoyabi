class City < ActiveRecord::Base
  has_many :users
  has_many :ads
  has_many :galerys
  belongs_to :state
  attr_accessible :latitude, :longitude, :name , :state_id
end
