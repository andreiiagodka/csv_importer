require 'rails_helper'

RSpec.describe Csv::SuppliersImportWorker, type: :worker do
  subject(:worker) { described_class.perform_async(rows) }

  let(:rows) do 
    file = Rails.root.join('spec', 'fixtures', 'suppliers.csv')
    parser = Csv::SupplierParser.new(file)
    parser.call

    parser.rows
  end

  it 'asserts Supplier count' do
    expect { worker }.to change(Supplier, :count).from(0).to(1)
  end
end
