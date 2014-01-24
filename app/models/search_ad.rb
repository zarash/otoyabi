class SearchAd
  include ActiveModel::Conversion
  extend ActiveModel::Naming

  attr_accessor :price_from, :price_to, :fuel_type,:list_order,
                :year_to, :year_from ,
                :mileage_to, :mileage_from ,
                :car_model_id , :girbox , :exchange, :car_status,
                :brand_id

	def initialize attributes ={}
    unless attributes.nil?
      attributes.each do |name, value|
        send("#{name}=", value)
      end
    end
	end

	def ads
    ads = Ad.newer
    ads = ads.where("year >= ?", self.year_from.to_i) if self.year_from 
    ads = ads.where("year <= ?", self.year_to.to_i) if self.year_to
    ads = ads.where("price >= ?", self.price_from.to_i)  unless self.price_from.blank?
    ads = ads.where("price <= ?", self.price_to.to_i)  unless self.price_to.blank?
    ads = ads.where("mileage >= ?", self.mileage_from.to_i)  unless self.mileage_from.blank?
    ads = ads.where("mileage <= ?", self.mileage_to.to_i)  unless self.mileage_to.blank?
    ads = ads.where("girbox = ?", self.girbox) unless self.girbox.blank?
    ads =ads.where("car_model_id = ?", self.car_model_id) unless self.car_model_id.blank? 

    if self.exchange.present?
      if self.exchange == "1"
        ads = ads.where("exchange = ?", true) 
      else
        ads = ads.where("exchange = ?", false) 
      end    
    end
    ads = ads.where("fuel_type = ?", self.fuel_type) unless self.fuel_type.blank?
    ads = ads.where(car_status: self.car_status) unless self.car_status.blank?
    case self.list_order
    when  'new_cars'
      ads = ads.order("year DESC")           
    when 'old_cars'
      ads = ads.order(:year) 
    when 'new_ads'
      ads = ads.order("updated_at DESC")
    when 'exp'
       ads = ads.order("price DESC") 
    when 'cheap'
       ads = ads.order(:price)                 
    end
    ads
	end

  def persisted?
    false
  end

	def self.inspect
	  "#<#{ self.to_s} #{ self.attributes.collect{ |e| ":#{ e }" }.join(', ') }>"
	end
  
end