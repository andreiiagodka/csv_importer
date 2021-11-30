module Csv
  class SuppliersImportWorker < ImportWorker
    self.csv_parser = Csv::SupplierParser
    self.operation = Supplier::Operation::Save
  end
end
