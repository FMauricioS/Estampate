ActiveAdmin.register Category do
  permit_params :name, shirts_attributes: [:title, :description, :price, :quantity, :size]
end
