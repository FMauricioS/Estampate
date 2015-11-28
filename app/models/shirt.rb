class Shirt < ActiveRecord::Base
  has_attached_file :photo, styles: { medium: "300x300>", thumb: "100x100>" }, :default_url => ActionController::Base.helpers.asset_path('missing.png')
  validates_attachment_content_type :photo, content_type: /\Aimage\/.*\Z/

  validates_presence_of(:size, :quantity, :description, :price, :title)
  validates :title, uniqueness: true
  validates_length_of :title, :minimum => 5, :maximum => 35
  validates_length_of :description, :minimum => 43, :maximum => 80

  has_many :categorizations
  has_many :categories, :through => :categorizations

  accepts_nested_attributes_for :categories, reject_if: :all_blank, allow_destroy: true

  def set_categories=(value)
    @categories = value
  end

  def save_categories
    @categories.each do |category_id|
      Categorization.create!(category_id: category_id, article_id: self.id)
    end
  end

  def sizes_text
    self.size.join(', ')
  end

  def sizes_text=(value)
    self.size = value.split(',').map{ |size| size.strip }
  end
end
