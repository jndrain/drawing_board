class RemoveProjectIdFromPictures < ActiveRecord::Migration
  def change
    remove_column :pictures, :project_id, :integer
  end
end
