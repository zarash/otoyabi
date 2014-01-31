class CreateGaleries < ActiveRecord::Migration
  def change
    create_table :galeries do |t|
      t.belongs_to :user
      t.belongs_to :city
      t.string :galery_name
      t.string :address
      t.string :tel
      t.string :detail   

      t.timestamps
    end
  end
end
