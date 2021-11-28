require 'rails_helper'

RSpec.describe Csv::SupplierParser do
  subject { described_class.new(file) }

  let(:file) { Rails.root.join('spec', 'fixtures', 'suppliers.csv') }

  before { subject.call }

  context 'when rows' do
    let(:expected_rows) do
      [{
        code: '1443',
        name: 'Spencer-Turcotte',
      }]
    end

    it 'asserts rows' do
      expect(subject.rows).to match_array expected_rows
    end
  end
end