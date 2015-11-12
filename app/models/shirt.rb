class Shirt < ActiveRecord::Base
	validates_presence_of(:size, :quantity, :photo, :description, :price)
end
