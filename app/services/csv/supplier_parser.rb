module Csv
  class SupplierParser < Parser
    self.headers = %I[
      code
      name
    ]
  end
end
