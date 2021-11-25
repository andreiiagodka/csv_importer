module Csv
  class SuppliersImportWorker < ImportWorker
    self.operation = Supplier::Operation::Save
  end
end