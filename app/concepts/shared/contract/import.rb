module Shared::Contract
  class Import < Reform::Form
    feature Reform::Form::Dry

    property :file

    validation do
      params do
        required(:file).filled
      end
    end
  end
end
