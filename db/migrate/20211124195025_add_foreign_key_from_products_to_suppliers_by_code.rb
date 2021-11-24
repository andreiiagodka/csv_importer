class AddForeignKeyFromProductsToSuppliersByCode < ActiveRecord::Migration[6.1]
  def change
    add_foreign_key :products, :suppliers, column: :supplier_code, primary_key: :code
  end
end
