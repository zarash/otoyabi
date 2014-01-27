class CarModel < ActiveRecord::Base
  belongs_to :brand
  has_many :ads
  attr_accessible :name , :brand_id
end
