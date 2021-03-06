ActiveAdmin.register Shirt do
  permit_params :description, :photo, :price, :quantity, :sizes_text, :title, categories_attributes: [:name]

  form do |f|
    f.inputs "Shirt details" do
      f.input :title
      f.input :description
      f.input :price
      f.input :quantity
      f.input :sizes_text
      f.input :photo, :as => :file
      f.has_many :categories do |category|
        category.input :name, :collection => Category.all.map{ |cat| [cat.name, cat.id] }
      end
    end
    f.actions
  end
end
