class Ad < ActiveRecord::Base
  attr_accessible :detail, :fuel_type, :girbox, :mileage, :price,
  								:view_count, :year,:user_id,:car_status,:exchange,
  								:internal_color_id, :cover_color_id, :car_model_id,:brand_id
 	has_many :ads_images
	accepts_nested_attributes_for :ads_images, allow_destroy: true
  belongs_to :car_model
  belongs_to :user
  belongs_to :city
  belongs_to :internal_color, class_name: "Color"
  belongs_to :cover_color, class_name: "Color"

  scope :newer, order(created_at: :desc)

  validates :detail, length: {maximum: 150 }
  validates :fuel_type, presence: true
  validates :girbox, presence: true
  validates :mileage, numericality: true, allow_blank: true
  validates :price,numericality: true, allow_blank: true
  validates :year, numericality: true, length: { is: 4 } 
  validates :car_model_id, presence: true

end
