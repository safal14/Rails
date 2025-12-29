class CreateProducts < ActiveRecord::Migration[8.1]
  def change
    create_table :products do |t|
      t.string :Name
      t.text :Description
      t.float :price

      t.timestamps
    end
  end
end
