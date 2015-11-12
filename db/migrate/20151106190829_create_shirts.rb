class CreateShirts < ActiveRecord::Migration
  def change
    create_table :shirts do |t|
      t.string :size
      t.decimal :price
      t.integer :quantity
      t.text :description
      t.string :photo

      t.timestamps null: false
    end
  end
end
