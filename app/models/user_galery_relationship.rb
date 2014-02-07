class UserGaleryRelationship < ActiveRecord::Base
  belongs_to :user
  belongs_to :galery
  attr_accessible :user_type
end
