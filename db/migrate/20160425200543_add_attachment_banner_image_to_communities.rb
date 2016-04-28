class AddAttachmentBannerImageToCommunities < ActiveRecord::Migration
  def self.up
    change_table :communities do |t|
      t.attachment :banner_image
    end
  end

  def self.down
    remove_attachment :communities, :banner_image
  end
end
