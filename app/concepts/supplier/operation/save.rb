module Supplier::Operation
  class Save < Trailblazer::Operation
    step :model
    step Contract::Build(constant: Supplier::Contract::Save)
    step Contract::Validate(key: :supplier)
    step Contract::Persist()

    def model(ctx, params:, **)
      ctx[:model] = Supplier.find_by(code: params[:supplier][:code]) || Supplier.new
    end
  end
end
