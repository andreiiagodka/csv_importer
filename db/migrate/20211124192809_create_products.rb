class CreateProducts < ActiveRecord::Migration[6.1]
  def change
    create_table :products do |t|
      t.string :sku, unique: true
      t.string :name
      t.monetize :price, currency: { present: false }
      t.integer :supplier_code
      t.string :column_1
      t.string :column_2
      t.string :column_3
      t.string :column_4

      t.timestamps
    end
  end
end
