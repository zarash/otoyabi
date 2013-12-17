class CreateCarColors < ActiveRecord::Migration
  def change
    create_table :car_colors do |t|
      t.string :color

      t.timestamps
    end
  end
end
