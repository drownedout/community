class AddAttachmentBannerImageToNeighborhoods < ActiveRecord::Migration
  def self.up
    change_table :neighborhoods do |t|
      t.attachment :banner_image
    end
  end

  def self.down
    remove_attachment :neighborhoods, :banner_image
  end
end
