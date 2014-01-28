class AddAttachmentPhotoToGaleries < ActiveRecord::Migration
  def self.up
    change_table :galeries do |t|
      t.attachment :photo
    end
  end

  def self.down
    drop_attached_file :galeries, :photo
  end
end
