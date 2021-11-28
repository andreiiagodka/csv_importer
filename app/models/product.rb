class Product < ApplicationRecord
  belongs_to :supplier, class_name: 'Supplier',
                        foreign_key: :supplier_code,
                        primary_key: :code

  monetize :price_cents
end
