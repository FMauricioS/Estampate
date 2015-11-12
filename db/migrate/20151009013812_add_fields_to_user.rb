class AddFieldsToUser < ActiveRecord::Migration
  def change
    add_column :users, :name, :string
    add_column :users, :last_name, :string
    add_column :users, :nickname, :string
    add_column :users, :address, :string
    add_column :users, :telephone, :string
    add_column :users, :personal_telephone, :string
  end
end
