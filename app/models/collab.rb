class Collab < ActiveRecord::Base
  belongs_to :project
  belongs_to :artist
end
