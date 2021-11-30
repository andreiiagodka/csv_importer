require 'rails_helper'

RSpec.describe Supplier::Operation::Import, type: :operation do
  subject(:operation) { described_class.call(params: params) }

  let(:params) do
    {
      import_file: { file: file }
    }
  end

  let(:file) { Rails.root.join('spec', 'fixtures', 'suppliers.csv') }

  describe 'success' do
    include_examples 'successful import operation', Supplier
  end

  describe 'failure' do
    include_examples 'failed import operation'
  end
end
