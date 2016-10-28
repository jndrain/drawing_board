class Artist < ActiveRecord::Base
  has_secure_password
  has_attached_file :avatar
  validates_attachment_content_type :avatar, :content_type => ["image/jpg", "image/jpeg", "image/png", "image/gif"]
  has_many :projects
  has_many :collabs
 

end
