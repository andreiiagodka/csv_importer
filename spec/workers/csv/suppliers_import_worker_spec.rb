require 'rails_helper'

RSpec.describe Csv::SuppliersImportWorker, type: :worker do
  subject(:worker) { described_class.perform_async(file) }

  let(:file) { Rails.root.join('spec', 'fixtures', 'suppliers.csv') }

  context 'when sidekiq testing fake' do
    before { Sidekiq::Testing.fake! }

    it 'asserts jobs count' do
      expect { worker }.to change(described_class.jobs, :size).by(1)
    end
  end

  context 'when sidekiq testing inline' do
    before { Sidekiq::Testing.inline! }

    it 'asserts Product count' do
      expect { worker }.to change(Supplier, :count).from(0).to(1)
    end
  end
end
