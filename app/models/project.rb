class Project < ActiveRecord::Base
  belongs_to :artist
  has_many :comments
  has_many :collabs
  has_many :pictures
  has_many :collaborators, through: :collabs, source: :artist
  has_attached_file :avatar
  has_attached_file :image
  validates_attachment_content_type :avatar, :image, :content_type => ["image/jpg", "image/jpeg", "image/png", "image/gif"]
end
