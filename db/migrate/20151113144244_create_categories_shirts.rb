class CreateCategoriesShirts < ActiveRecord::Migration
  def up
    create_table :categories_shirts do |t|
    	t.integer :category_id
    	t.integer :shirt_id
    end
    add_index :categories_shirts, [:category_id, :shirt_id]
  end

  def down
  	drop_table :categories_shirts
  end
end
