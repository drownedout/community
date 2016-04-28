class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  has_many :communities
  has_many :events

  has_attached_file :profile_picture, styles: { large: "900x900", medium: "300x300#", small: "100x100#" }
  validates_attachment_content_type :profile_picture, :content_type => /\Aimage\/.*\Z/

end
