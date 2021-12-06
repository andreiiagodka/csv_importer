module Csv
  class ProductsImportWorker < ImportWorker
    self.operation = Product::Operation::Save
  end
end
