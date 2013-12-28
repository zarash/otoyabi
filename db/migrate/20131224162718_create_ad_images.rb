class CreateAdImages < ActiveRecord::Migration
  def change
    create_table :ad_images do |t|
      t.attachment :image

      t.timestamps
    end
  end
end
