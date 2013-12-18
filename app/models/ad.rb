class Ad < ActiveRecord::Base
  belongs_to :brand
  belongs_to :car_model
  belongs_to :user
  belongs_to :internal_color
  belongs_to :cover_color
  attr_accessible :detail, :fuel_type, :girbox, :mileage, :price, :view_count, :year
end
