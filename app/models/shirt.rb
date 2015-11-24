class Shirt < ActiveRecord::Base
  has_attached_file :photo, styles: { medium: "300x300>", thumb: "100x100>" }, :default_url => ActionController::Base.helpers.asset_path('missing.png')
  validates_attachment_content_type :photo, content_type: /\Aimage\/.*\Z/

  # validates_presence_of(:size, :quantity, :description, :price)

  # has_many :category_shirts
  # has_many :categories, :through => :category_shirts
  has_and_belongs_to_many :categories

  accepts_nested_attributes_for :categories, reject_if: :all_blank, allow_destroy: true

  def size_text
    self.size.join(', ')
  end

  def size_text=(value)
    self.size = value.split(',').map{ |size| size.strip }
  end
end
