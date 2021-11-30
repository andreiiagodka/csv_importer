require 'rails_helper'

RSpec.describe Csv::SuppliersImportWorker, type: :worker do
  subject(:worker) { described_class.perform_async(file) }

  let(:file) { Rails.root.join('spec', 'fixtures', 'suppliers.csv') }

  it 'asserts Product count' do
    expect { worker }.to change(Supplier, :count).from(0).to(1)
  end
end
