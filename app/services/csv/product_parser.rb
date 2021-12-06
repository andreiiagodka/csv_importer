module Csv
  class ProductParser < Parser
    self.headers = %I[
      sku
      supplier_code
      name
      column_1
      column_2
      column_3
      column_4
      column_5
      price
    ]
  end
end
