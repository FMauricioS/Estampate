class Category < ActiveRecord::Base
  # has_many :category_shirts
  # has_many :shirts, :through => :category_shirts
  has_and_belongs_to_many :shirts
  accepts_nested_attributes_for :shirts, reject_if: :all_blank, allow_destroy: true
end
