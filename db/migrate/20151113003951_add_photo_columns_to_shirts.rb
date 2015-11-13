class AddPhotoColumnsToShirts < ActiveRecord::Migration
 	def up
    add_attachment :shirts, :photo
  end

  def down
    remove_attachment :shirts, :photo
  end
end
