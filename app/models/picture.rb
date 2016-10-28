class Picture < ActiveRecord::Base
  belongs_to :artist
  belongs_to :project
end
