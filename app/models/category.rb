class Category < ActiveRecord::Base
	# has_many :category_shirts
	# has_many :shirts, :through => :category_shirts

	has_and_belongs_to_many :shirts
end