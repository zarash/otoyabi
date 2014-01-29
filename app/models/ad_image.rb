class AdImage < ActiveRecord::Base
	belongs_to :ad
  attr_accessible :image

end
