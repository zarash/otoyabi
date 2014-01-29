class Galery < ActiveRecord::Base
  attr_accessible :address, :city_id, :details, :galery_name, :user_id, :state_id, :tel, :photo
  belongs_to :city
  belongs_to :user

  has_attached_file :photo,
  		 :styles => {
			:thumb => "60x60>",
			:small  => "80x80>",
			:medium => "140x140>",
			:large =>   "300x300>"},
			:default_url => "/public/assets/galeries/default-pic.jpeg"
end
   # styles: lambda { |a| {:thumb => "48x48#", :square => "160x160#"} if a.instance.is_image? },

