class CreateShirtsAndCategories < ActiveRecord::Migration
	def change
	  create_table :shirts_categories, id: false do |t|
	    t.belongs_to :category, index: true
	    t.belongs_to :shirt, index: true
	  end
	end
end


