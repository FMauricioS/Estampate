ActiveAdmin.register User do
  permit_params :description, :photo, :price, :quantity, :sizes_text, :title, categories_attributes: [:name]
end
