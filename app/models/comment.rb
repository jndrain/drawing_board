class Comment < ActiveRecord::Base
  belongs_to :project
  belongs_to :artist
end
