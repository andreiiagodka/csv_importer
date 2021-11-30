module Shared::Operation
  class Import < Trailblazer::Operation
    class_attribute :csv_parser, :csv_worker

    class Present < Trailblazer::Operation
      step Model(ImportFile, :new)
      step Contract::Build(constant: Shared::Contract::Import)
    end

    step Subprocess(Present)
    step Contract::Validate()
    pass :perform_async_worker

    def perform_async_worker(_ctx, model:, **)
      parser = csv_parser.new(model.file)

      csv_worker.perform_async(parser)
    end
  end
end
