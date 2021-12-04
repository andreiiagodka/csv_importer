require 'rails_helper'

RSpec.describe Csv::SuppliersImportWorker, type: :worker do
  subject(:worker) { described_class.perform_async(chunks) }

  let(:chunks) do
    file = Rails.root.join('spec', 'fixtures', 'suppliers.csv')

    Csv::SupplierParser.new(file).call
  end

  it 'asserts Supplier count' do
    expect { worker }.to change(Supplier, :count).from(0).to(1)
  end
end
