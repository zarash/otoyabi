class CreateColors < ActiveRecord::Migration
  def change
    create_table :colors do |t|
      t.string :name
      t.belongs_to :ad
      
      t.timestamps
    end
  end
end
