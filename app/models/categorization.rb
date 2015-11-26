class Categorization < ActiveRecord::Base
  belongs_to :shirt
  belongs_to :category
end
