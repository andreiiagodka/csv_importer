require 'rails_helper'

RSpec.describe Csv::SupplierParser do
  subject(:service) { described_class.new(file) }

  let(:file) { Rails.root.join('spec', 'fixtures', 'suppliers.csv') }

  before { service.call }

  context 'when rows' do
    let(:expected_rows) do
      [{
        code: '1443',
        name: 'Spencer-Turcotte'
      }]
    end

    it 'asserts rows' do
      expect(service.rows).to match_array expected_rows
    end
  end
end
