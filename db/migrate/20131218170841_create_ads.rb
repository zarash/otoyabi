class CreateAds < ActiveRecord::Migration
  def change
    create_table :ads do |t|
      t.belongs_to :car_model
      t.belongs_to :user
      t.belongs_to :internal_color
      t.belongs_to :cover_color
      t.string :girbox
      t.integer :price
      t.string :fuel_type
      t.integer :mileage
      t.string :year
      t.text :detail
      t.integer :view_count

      t.timestamps
    end
  end
end
