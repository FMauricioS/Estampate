class CreateShirtsCategories < ActiveRecord::Migration
  def up
    create_table :categorizations do |t|
      t.integer :shirt_id
      t.integer :category_id
    end

    add_index :categorizations, :shirt_id
    add_index :categorizations, :category_id
  end

  def down
    drop_table :categorizations
  end
end
