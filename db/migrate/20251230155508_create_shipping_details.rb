class CreateShippingDetails < ActiveRecord::Migration[8.1]
  def change
    create_table :shipping_details do |t|
      t.string :address
      t.string :city
      t.string :state
      t.datetime :shipped_at

      t.timestamps
    end
  end
end
