class Category < ActiveRecord::Base
	has_many :category_shirts
	has_many :shirts, :through => :category_shirts
end