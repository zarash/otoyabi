class Ad < ActiveRecord::Base
  attr_accessible :detail, :fuel_type, :girbox, :mileage, :price, :view_count, :year,
  				 :user, :internal_color_id, :cover_color_id, :car_model_id,  :brand_id
 	has_many :ads_images
	accepts_nested_attributes_for :ads_images, allow_destroy: true
  belongs_to :car_model
  belongs_to :user
  belongs_to :internal_color, class_name: "Color"
  belongs_to :cover_color, class_name: "Color"

end