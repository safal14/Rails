class CreateOrderItems < ActiveRecord::Migration[8.1]
  def change
    create_table :order_items do |t|
      t.decimal :unit_price
      t.integer :quantity

      t.timestamps
    end
  end
end
