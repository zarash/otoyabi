class Brand < ActiveRecord::Base
  has_many :car_models
  has_many :ads
  attr_accessible :name
end
