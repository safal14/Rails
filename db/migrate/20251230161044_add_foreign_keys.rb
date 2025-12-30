class AddForeignKeys < ActiveRecord::Migration[8.1]
  def change
    
    # Products -> Categories
    add_reference :products, :category, foreign_key: true

    # Orders -> Customers
    add_reference :orders, :customer, foreign_key: true

    # OrderItems -> Products and Orders
    add_reference :order_items, :product, foreign_key: true
    add_reference :order_items, :order, foreign_key: true

    # ShippingDetails -> Orders
    add_reference :shipping_details, :order, foreign_key: true
  end
end
