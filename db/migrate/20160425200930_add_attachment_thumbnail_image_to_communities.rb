class AddAttachmentThumbnailImageToCommunities < ActiveRecord::Migration
  def self.up
    change_table :communities do |t|
      t.attachment :thumbnail_image
    end
  end

  def self.down
    remove_attachment :communities, :thumbnail_image
  end
end
