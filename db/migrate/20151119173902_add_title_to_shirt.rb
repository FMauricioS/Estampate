class AddTitleToShirt < ActiveRecord::Migration
  def change
    add_column :shirts, :title, :string
  end
end
