class CarModel < ActiveRecord::Base
  belongs_to :brand
  attr_accessible :name , :brand_id
end
