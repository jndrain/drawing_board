class CreateProjects < ActiveRecord::Migration
  def change
    create_table :projects do |t|
      t.string :name
      t.text :description
      t.string :media
      t.references :artist, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
