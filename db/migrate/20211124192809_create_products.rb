class CreateProducts < ActiveRecord::Migration[6.1]
  def change
    create_table :products do |t|
      t.string :sku, unique: true
      t.string :name
      t.monetize :price, currency: { present: false }
      t.integer :supplier_code

      t.timestamps
    end
  end
end
