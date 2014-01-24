class Galery < ActiveRecord::Base
  attr_accessible :address, :city_id, :details, :email, :galery_name, :manager_id, :state_id, :tel, :user_writer_name
  belongs_to :city
end
