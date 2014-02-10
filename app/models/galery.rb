class Galery < ActiveRecord::Base
  attr_accessible :address, :city_id, :detail, :galery_name, :state_id, :tel, :photo
  belongs_to :city
  has_many :user_galery_relationships
  has_many :users, :through => :user_galery_relationships



  has_attached_file :photo,
  		:styles => {
			:thumb => "60x60>",
			:small  => "80x80>",
			:medium => "140x140>",
			:large =>   "300x300>",
      :xlarge => "600x600>",
      :xxlarge => "800x400>" },
			:default_url => "/app/assets/images/bmw3con_2.jpg"

  def manager
    self.user_galery_relationships.where(user_type: "manager").try(:first).try(:user)
  end
end
   # styles: lambda { |a| {:thumb => "48x48#", :square => "160x160#"} if a.instance.is_image? },


