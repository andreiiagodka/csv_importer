require 'rails_helper'

RSpec.describe Supplier::Operation::Import, type: :operation do
  subject { described_class.call(params: params) }

  describe 'success' do
    include_examples 'successful import operation', Csv::SuppliersImportWorker
  end

  describe 'failure' do
    include_examples 'failed import operation'
  end
end