class Neighborhood < ActiveRecord::Base
	belongs_to :community
	has_many :events
	has_attached_file :profile_picture, styles: { large: "900x900", medium: "300x300#", small: "100x100#" }
  	validates_attachment_content_type :profile_picture, :content_type => /\Aimage\/.*\Z/
  	
	has_attached_file :banner_image, styles: { large: "900x900", medium: "300x300#", small: "100x100#" }
  	validates_attachment_content_type :banner_image, :content_type => /\Aimage\/.*\Z/
end
