class CreateGaleries < ActiveRecord::Migration
  def change
    create_table :galeries do |t|
      t.string :galery_name
      t.string :user_writer_name
      t.integer :state_id
      t.string :address
      t.string :tel
      t.string :email
      t.string :details
      t.integer :manager_id
      t.integer :city_id

      t.timestamps
    end
  end
end
