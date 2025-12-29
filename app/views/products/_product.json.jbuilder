json.extract! product, :id, :id, :Name, :Description, :price, :created_at, :updated_at
json.url product_url(product, format: :json)
