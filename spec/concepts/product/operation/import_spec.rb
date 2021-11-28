require 'rails_helper'

RSpec.describe Product::Operation::Import, type: :operation do
  subject(:operation) { described_class.call(params: params) }

  describe 'success' do
    include_examples 'successful import operation', Csv::ProductsImportWorker
  end

  describe 'failure' do
    include_examples 'failed import operation'
  end
end
