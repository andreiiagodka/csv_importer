module Shared::Operation
  class Import < Trailblazer::Operation
    class_attribute :csv_parser, :csv_worker

    step Model(ImportFile, :new)
    step Contract::Build(constant: Shared::Contract::Import)
    step Contract::Validate(key: :import_file)
    step Contract::Persist(method: :sync)
    step :parse_file
    pass :import_rows

    def parse_file(ctx, model:, **)
      ctx[:chunks] = csv_parser.new(model.file).call
    end

    def import_rows(_ctx, chunks:, **)
      csv_worker.perform_async(chunks)
    end
  end
end
