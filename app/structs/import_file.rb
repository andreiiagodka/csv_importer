class ImportFile < Dry::Struct
  extend ActiveModel::Naming
  # include ActiveModel::AttributeMethods

  attribute :file, Types::String.optional
                                .default(nil)

  # def persisted?
  #   false
  # end
end