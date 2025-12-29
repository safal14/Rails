json.extract! customer, :id, :FirstName, :LastName, :Address, :created_at, :updated_at
json.url customer_url(customer, format: :json)
