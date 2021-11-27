module Shared::Operation
  class Import < Trailblazer::Operation
    class_attribute :csv_parser, :csv_worker

    step Shared::Model::File
    step Contract::Build(constant: Shared::Contract::Import)
    step Contract::Validate()
    step :perform_async_worker

    def perform_async_worker(ctx, model:, **)
      parser = csv_parser.new(model.file)

      csv_worker.perform_async(parser)
    end
  end
end
