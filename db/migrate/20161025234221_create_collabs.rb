class CreateCollabs < ActiveRecord::Migration
  def change
    create_table :collabs do |t|
      t.references :project, index: true, foreign_key: true
      t.references :artist, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
