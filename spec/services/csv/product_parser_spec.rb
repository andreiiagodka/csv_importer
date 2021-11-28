require 'rails_helper'

RSpec.describe Csv::ProductParser do
  subject(:service) { described_class.new(file) }

  let(:file) { Rails.root.join('spec', 'fixtures', 'products.csv') }

  before { service.call }

  context 'when rows' do
    let(:expected_rows) do
      [{
        sku: '1978',
        supplier_code: '2437',
        name: 'Onesync GPS Power Kit',
        column_1: 'GFM',
        column_2: '407',
        column_3: '1-976-976-6558 x867',
        column_4: '607074511915',
        column_5: nil,
        price: '282.97'
      }]
    end

    it 'asserts rows' do
      expect(service.rows).to match_array expected_rows
    end
  end
end
