class CreateGirboxes < ActiveRecord::Migration
  def change
    create_table :girboxes do |t|
      t.string :name

      t.timestamps
    end
  end
end
