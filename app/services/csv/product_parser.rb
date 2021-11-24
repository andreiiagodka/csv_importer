module Csv
  class ProductParser < Parser
    self.headers = %I[
      code
      name
    ]
  end
end