class CreateShirts < ActiveRecord::Migration
  def change
    create_table :shirts do |t|
      t.string :size, array: true, default: []
      t.decimal :price
      t.integer :quantity, array: true, default: []
      t.text :description
      t.string :photo

      t.timestamps null: false
    end
  end
end
