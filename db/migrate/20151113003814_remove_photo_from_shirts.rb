class RemovePhotoFromShirts < ActiveRecord::Migration
  def change
    remove_column :shirts, :photo, :string
  end
end
