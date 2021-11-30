module Product::Operation
  class Import < Shared::Operation::Import
    self.csv_worker = Csv::ProductsImportWorker
  end
end
