class Supplier < ApplicationRecord
  has_many :products, class_name: 'Supplier',
                      foreign_key: :code,
                      dependent: :destroy
end
