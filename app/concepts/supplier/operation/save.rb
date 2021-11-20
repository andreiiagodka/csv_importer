module Supplier::Operation
  class Save < Trailblazer::Operation
    step Model(Supplier, :new)
    step Contract::Build(constant: Supplier::Contract::Save)
    step Contract::Validate(key: :supplier)
    step Contract::Persist()
  end
end