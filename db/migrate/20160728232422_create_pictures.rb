class CreatePictures < ActiveRecord::Migration
  def change
    create_table :pictures do |t|
      t.string :name
      t.string :description
      t.string :url
      t.integer :photo_id

      t.timestamps null: false
    end
  end
end
