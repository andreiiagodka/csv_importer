module Product::Contract
  class Save < Reform::Form
    feature Reform::Form::Dry

    property :sku
    property :name
    property :price_cents
    property :supplier_code
    property :column_1
    property :column_2
    property :column_3
    property :column_4
    property :column_5

    validation do
      params do
        required(:sku).filled
        required(:name).filled
        required(:price_cents).filled
        required(:supplier_code).filled
        optional(:column_1)
        optional(:column_2)
        optional(:column_3)
        optional(:column_4)
        optional(:column_5)
      end
    end
  end
end
