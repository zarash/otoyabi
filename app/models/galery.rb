class Galery < ActiveRecord::Base
  attr_accessible :address, :city_id, :details, :galery_name, :user_id, :state_id, :tel
  belongs_to :city
  belongs_to :user
end
