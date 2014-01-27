class CreateCities < ActiveRecord::Migration
  def change
    create_table :cities do |t|
      t.belongs_to :state	
      t.string :name
      t.float :latitude
      t.float :longitude

      t.timestamps 
    end
  end
end
