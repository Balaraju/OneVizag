class CreateHistories < ActiveRecord::Migration
  def change
    create_table :histories do |t|
      t.float :quantity
      t.float :price
      t.references :order, index: true
      t.references :product, index: true

      t.timestamps null: false
    end
    add_foreign_key :histories, :orders
    add_foreign_key :histories, :products
  end
end
