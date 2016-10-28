class Picture < ActiveRecord::Base
  belongs_to :artist
  belongs_to :project
  has_attached_file :image
  validates_attachment_content_type :image, :content_type => ["image/jpg", "image/jpeg", "image/png", "image/gif"]
end
