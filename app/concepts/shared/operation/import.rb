module Shared::Operation
  class Import < Trailblazer::Operation
    class_attribute :csv_parser, :csv_worker

    step Model(ImportFile, :new)
    step Contract::Build(constant: Shared::Contract::Import)
    step Contract::Validate(key: :import_file)
    step Contract::Persist(method: :sync)
    pass :perform_async_worker

    def perform_async_worker(_ctx, model:, **)
      csv_worker.perform_async(model.file)
    end
  end
end
