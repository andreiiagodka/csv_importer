module Supplier::Operation
  class Save < Trailblazer::Operation
    step :model
    step Contract::Build(constant: Supplier::Contract::Save)
    step Contract::Validate()
    step Contract::Persist()

    def model(ctx, params:, **)
      ctx[:model] = Supplier.find_or_initialize_by(code: params[:code])
    end
  end
end
