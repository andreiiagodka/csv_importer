require 'rails_helper'

RSpec.describe Product::Contract::Save, type: :contract do
  subject { described_class.new(Product.new) }

  describe 'success' do
    let(:params) { attributes_for(:product) }

    it 'asserts contract success' do
      expect(subject.validate(params)).to be_truthy
    end
  end

  describe 'failure' do
    let(:params) { {} }

    it 'asserts contract failure' do
      expect(subject.validate(params)).to be_falsey
    end

    context 'when errors' do
      let(:errors) { subject.errors.messages }

      before { subject.validate(params) }

      context 'when presence errors' do
        let(:expected_errors) { ['must be filled'] }

        it 'assert errors' do
          expect(errors[:sku]).to match_array expected_errors
          expect(errors[:name]).to match_array expected_errors
          expect(errors[:supplier_code]).to match_array expected_errors
        end
      end
    end
  end
end