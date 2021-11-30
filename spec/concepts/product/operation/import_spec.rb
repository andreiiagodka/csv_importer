require 'rails_helper'

RSpec.describe Product::Operation::Import, type: :operation do
  subject(:operation) { described_class.call(params: params) }

  let(:params) do
    {
      import_file: { file: file }
    }
  end

  let(:file) { Rails.root.join('spec', 'fixtures', 'products.csv') }

  before { create :supplier, :import }

  describe 'success' do
    include_examples 'successful import operation', Product
  end

  describe 'failure' do
    include_examples 'failed import operation'
  end
end
