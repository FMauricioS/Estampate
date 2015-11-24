ActiveAdmin.register Shirt do
#  permit_params :description, :photo, :price, quantity: [], size: [], :title, :category_id

  permit_params :description, :photo, :price, :quantity, {:size => []}, :title

  form do |f|
    f.inputs "Shirt details" do
      f.input :title
      f.input :description
      f.input :price
      f.input :quantity
      f.input :size, :as => :array
      f.input :photo, :as => :file
      f.has_many :categories do |category|
        category.input :name, :collection => Category.all.map{ |cat| [cat.name, cat.id] }
      end
    end
    f.actions
  end
end
