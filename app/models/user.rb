class User < ActiveRecord::Base
  belongs_to :city
  has_many :ads
  has_many :galeries
  
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  # Setup accessible (or protected) attributes for your model
  attr_accessible :email, :password, :password_confirmation, :remember_me, :first_name,
  								:last_name, :tel, :mobile, :city_id
  # attr_accessible :title, :body
  validates :first_name, presence: true
  validates :last_name, presence: true
  validates :email, presence: true
  #validates :password, presence: true
  #validates :password_confirmation, presence: true
  validates :tel, numericality: true, allow_blank: true
  validates :mobile, presence: true, numericality: true#, length: { is: 11 }
  


  def admin?
    if  self.email == 'zarash@yahoo.com'
      true
    else
      false
    end
  end

  def full_name
    first_name + " " + last_name
  end
end
