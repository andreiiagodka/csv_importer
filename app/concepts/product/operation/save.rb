module Product::Operation
  class Save < Trailblazer::Operation
    step :model
    step Contract::Build(constant: Product::Contract::Save)
    step Contract::Validate(key: :product)
    step Contract::Persist()

    def model(ctx, params:, **)
      ctx[:model] = Product.find_or_initialize_by(params[:product])
    end
  end
end
