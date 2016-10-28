class Project < ActiveRecord::Base
  belongs_to :artist
  has_many :comments
  has_many :collabs
  has_many :collaborators, through: :collabs, source: :artist
  has_attached_file :avatar
  validates_attachment_content_type :avatar, :content_type => ["image/jpg", "image/jpeg", "image/png", "image/gif"]
end
