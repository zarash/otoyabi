class CreateAds < ActiveRecord::Migration
  def change
    create_table :ads do |t|
      t.belongs_to :brand
      t.belongs_to :car_model
      t.belongs_to :user
      t.string :girbox
      t.belongs_to :internal_color
      t.belongs_to :cover_color
      t.integer :price
      t.string :fuel_type
      t.integer :mileage
      t.string :year
      t.text :detail
      t.integer :view_count

      t.timestamps
    end
    add_index :ads, :brand_id
    add_index :ads, :car_model_id
    add_index :ads, :user_id
    add_index :ads, :internal_color_id
    add_index :ads, :cover_color_id
  end
end
