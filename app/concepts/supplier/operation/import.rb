module Supplier::Operation
  class Import < Shared::Operation::Import
    self.csv_parser = Csv::SupplierParser
    self.csv_worker = Csv::SuppliersImportWorker
  end
end
