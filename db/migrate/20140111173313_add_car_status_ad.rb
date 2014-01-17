class AddCarStatusAd < ActiveRecord::Migration
  def up
  	add_column(:ads, :exchange, :boolean, default: false)
  	add_column(:ads, :car_status, :string, limit: 10, default: "karkarde")
  end

  def down
  	remove_column(:ads, :car_status)
  	remove_column(:ads, :exchange)
  end
end
