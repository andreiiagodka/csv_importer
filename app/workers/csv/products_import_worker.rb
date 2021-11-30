module Csv
  class ProductsImportWorker < ImportWorker
    self.csv_parser = Csv::ProductParser
    self.operation = Product::Operation::Save
  end
end
