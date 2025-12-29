class CreateCustomers < ActiveRecord::Migration[8.1]
  def change
    create_table :customers do |t|
      t.string :FirstName
      t.string :LastName
      t.string :Address

      t.timestamps
    end
  end
end
