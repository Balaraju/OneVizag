class CreateProducts < ActiveRecord::Migration
  def change
    create_table :products do |t|
      t.string :product_name
      t.float :price
      t.float :available
      t.references :category, index: true
      t.references :unit, index: true

      t.timestamps null: false
    end
    add_foreign_key :products, :categories
    add_foreign_key :products, :units
  end
end
