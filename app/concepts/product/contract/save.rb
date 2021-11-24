module Product::Contract
  class Save < Reform::Form
    feature Reform::Form::Dry

    property :sku
    property :name
    property :price_cents
    property :supplier_code

    validation do
      params do
        required(:sku).filled
        required(:name).filled
        required(:price_cents).filled
        required(:supplier_code).filled
      end
    end
  end
end
