require 'rails_helper'

RSpec.describe Supplier::Operation::Save, type: :operation do
  subject(:operation) { described_class.call(params: params) }

  let(:model) { operation[:model] }

  describe 'success' do
    context 'when create' do
      let(:params) { attributes_for :supplier }

      include_examples 'successful create operation', Supplier
    end

    context 'when update' do
      let!(:supplier) { create :supplier }

      let(:params) { attributes_for :supplier, code: supplier.code }

      include_examples 'successful update operation', Supplier
    end
  end

  describe 'failure' do
    context 'when presence errors' do
      let(:params) { {} }

      include_examples 'failed save operation', Supplier

      context 'when errors' do
        let(:errors) { operation['contract.default'].errors.messages }

        let(:expected_errors) { ['must be filled'] }

        it 'asserts errors' do
          expect(errors[:code]).to match_array expected_errors
          expect(errors[:name]).to match_array expected_errors
        end
      end
    end
  end
end
