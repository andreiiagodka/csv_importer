module Supplier::Contract
  class Save < Reform::Form
    feature Reform::Form::Dry

    property :code
    property :name

    validation do
      params do
        required(:code).filled
        required(:name).filled
      end
    end
  end
end
