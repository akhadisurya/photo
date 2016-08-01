class DeletePhotoId < ActiveRecord::Migration
  def change
    remove_column :pictures, :photo_id
  end
end
