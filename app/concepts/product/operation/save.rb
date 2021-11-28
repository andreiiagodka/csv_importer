module Product::Operation
  class Save < Trailblazer::Operation
    step :modify_params
    step :model
    step Contract::Build(constant: Product::Contract::Save)
    step Contract::Validate()
    step Contract::Persist()

    def modify_params(ctx, params:, **)
      params[:price_cents] = params.delete(:price).to_money.fractional
    end

    def model(ctx, params:, **)
      ctx[:model] = Product.find_or_initialize_by(sku: params[:sku])
    end
  end
end
