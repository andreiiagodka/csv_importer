require 'rails_helper'

RSpec.describe Csv::ProductsImportWorker, type: :worker do
  subject(:worker) { described_class.perform_async(chunks) }

  let(:chunks) do
    file = Rails.root.join('spec', 'fixtures', 'products.csv')

    Csv::ProductParser.new(file).call
  end

  before { create :supplier, :import }

  it 'asserts Product count' do
    expect { worker }.to change(Product, :count).from(0).to(1)
  end
end
