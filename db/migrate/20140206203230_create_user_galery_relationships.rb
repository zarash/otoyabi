class CreateUserGaleryRelationships < ActiveRecord::Migration
  def change
    create_table :user_galery_relationships do |t|
      t.belongs_to :user
      t.belongs_to :galery
      t.string :user_type

      t.timestamps
    end
    add_index :user_galery_relationships, :user_id
    add_index :user_galery_relationships, :galery_id
  end
end
