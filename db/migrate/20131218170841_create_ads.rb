class CreateAds < ActiveRecord::Migration
  def change
    create_table :ads do |t|
      t.belongs_to :car_model
      t.belongs_to :user
      t.belongs_to :internal_color
      t.belongs_to :cover_color
      t.string :girbox, limit: 1, default: 'd'
      t.belongs_to :city
      t.string :fuel_type, limit: 2, default: 'bz'
      t.integer :price
      t.integer :mileage
      t.integer :year
      t.text :detail
      t.integer :view_count

      t.timestamps
    end
  end
end
