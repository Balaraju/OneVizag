class CreateUnits < ActiveRecord::Migration
  def change
    create_table :units do |t|
      t.string :unit_type

      t.timestamps null: false
    end
  end
end
