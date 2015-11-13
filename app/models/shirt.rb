class Shirt < ActiveRecord::Base
	 has_attached_file :photo, styles: { medium: "300x300>", thumb: "100x100>" }, :default_url => ActionController::Base.helpers.asset_path('missing.png')
  validates_attachment_content_type :photo, content_type: /\Aimage\/.*\Z/
  
	validates_presence_of(:size, :quantity, :description, :price)

	# has_many :category_shirts
	# has_many :categories, :through => :category_shirts
	has_and_belongs_to_many :categories
end
