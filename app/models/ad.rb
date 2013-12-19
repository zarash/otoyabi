class Ad < ActiveRecord::Base
  belongs_to :brand
  belongs_to :car_model
  belongs_to :user
  belongs_to :internal_color, class_name: "Color"
  belongs_to :cover_color, class_name: "Color"
  attr_accessible :detail, :fuel_type, :girbox, :mileage, :price, :view_count, :year,
  				:brand, :car_model, :user, :internal_color, :cover_color
end