class Color < ActiveRecord::Base
  attr_accessible :name
  has_many :cover_color_ads, class_name: "Ad", foreign_key: "cover_color_id"
  has_many :internal_color_ads, class_name: "Ad", foreign_key: "internal_color_id"
end
