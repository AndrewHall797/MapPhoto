class AddAttachmentProfilePicToLocations < ActiveRecord::Migration
  def self.up
    change_table :locations do |t|
      t.attachment :profile_pic
    end
  end

  def self.down
    remove_attachment :locations, :profile_pic
  end
end
