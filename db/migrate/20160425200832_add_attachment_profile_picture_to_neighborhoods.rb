class AddAttachmentProfilePictureToNeighborhoods < ActiveRecord::Migration
  def self.up
    change_table :neighborhoods do |t|
      t.attachment :profile_picture
    end
  end

  def self.down
    remove_attachment :neighborhoods, :profile_picture
  end
end
