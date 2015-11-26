class Category < ActiveRecord::Base
  has_many :categorizations
  has_many :shirts, :through => :categorizations
  accepts_nested_attributes_for :shirts, reject_if: :all_blank, allow_destroy: true
end
