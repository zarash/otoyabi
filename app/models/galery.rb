class Galery < ActiveRecord::Base
  attr_accessible :address, :city_id, :details, :galery_name, :user_id, :state_id, :tel, :photo
  belongs_to :city
  belongs_to :user

  has_attached_file :photo, :styles => {:small => "150x150>"}
end
