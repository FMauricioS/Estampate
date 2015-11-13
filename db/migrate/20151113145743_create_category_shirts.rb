class CreateCategoryShirts < ActiveRecord::Migration
  def change
    create_table :category_shirts do |t|
      t.integer :shirt_id
      t.integer :category_id

      t.timestamps null: false
    end
  end
end
