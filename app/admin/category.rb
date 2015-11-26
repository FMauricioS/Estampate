ActiveAdmin.register Category, :as => "AwesomeCategory" do
  permit_params :name, shirts_attributes: [:title, :description, :price, :quantity, :size]
end
