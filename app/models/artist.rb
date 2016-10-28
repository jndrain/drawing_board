class Artist < ActiveRecord::Base
  has_secure_password
  has_attached_file :avatar
  has_attached_file :image
  validates_attachment_content_type :avatar, :image, :content_type => ["image/jpg", "image/jpeg", "image/png", "image/gif"]
  has_many :projects, dependent: :destroy
  has_many :collabs
  has_many :pictures, dependent: :destroy
 

end
