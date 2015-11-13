class CategoryShirt < ActiveRecord::Base
	belongs_to :shirt
	belongs_to :category
end
