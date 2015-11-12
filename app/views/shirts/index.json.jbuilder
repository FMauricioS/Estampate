json.array!(@shirts) do |shirt|
  json.extract! shirt, :id, :size, :price, :quantity, :description, :photo
  json.url shirt_url(shirt, format: :json)
end
