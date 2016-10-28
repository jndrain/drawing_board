class CreateArtists < ActiveRecord::Migration
  def change
    create_table :artists do |t|
      t.string :fname
      t.string :lname
      t.string :uname
      t.text :bio
      t.string :email
      t.string :password_digest
      t.string :city
      t.string :state

      t.timestamps null: false
    end
  end
end
