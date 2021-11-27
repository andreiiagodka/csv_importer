require 'rails_helper'

RSpec.describe Product::Operation::Save, type: :operation do
  subject { described_class.call(params: params) }

  let(:model) { subject[:model] }

  let(:supplier) { create :supplier }

  describe 'success' do
    context 'when create' do
      let(:params) { attributes_for :product, supplier_code: supplier.code }

      it 'asserts operation success' do
        expect(subject).to be_success
      end

      it 'asserts model attributes' do
        expect(model).to have_attributes params
      end

      it 'asserts Product count' do
        expect { subject }.to change(Product, :count).from(0).to(1)
      end
    end

    context 'when update' do
      let!(:product) { create :product, supplier: supplier }

      let(:params) { attributes_for :product, sku: product.sku, supplier_code: product.supplier_code }

      it 'asserts operation success' do
        expect(subject).to be_success
      end

      it 'asserts model attributes' do
        expect(model).to have_attributes params
      end

      it 'asserts Product count' do
        expect { subject }.not_to change(Product, :count)
      end
    end
  end

  describe 'failure' do
    context 'when presence errors' do
      let(:params) { {} }

      it 'asserts operation failure' do
        expect(subject).to be_failure
      end

      it 'asserts Product count' do
        expect { subject }.not_to change(Product, :count)
      end

      context 'when errors' do
        let(:errors) { subject['contract.default'].errors.messages }

        let(:expected_errors) { ['must be filled'] }

        it 'asserts errors' do
          expect(errors[:sku]).to match_array expected_errors
          expect(errors[:name]).to match_array expected_errors
          expect(errors[:supplier_code]).to match_array expected_errors
        end
      end
    end
  end
end