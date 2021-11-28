RSpec.shared_examples 'successful import operation' do |worker|
  let(:params) do
    { file: Faker::File.file_name }
  end

  before do
    allow(worker).to receive(:perform_async).and_return(nil)
  end

  it 'asserts operation success' do
    expect(subject).to be_success
  end

  context 'when model' do
    let(:model) { subject[:model] }

    let(:expected_model) { OpenStruct.new(file: params[:file]) }

    it 'asserts model' do
      expect(subject[:model]).to eq expected_model
    end
  end
end

RSpec.shared_examples 'failed import operation' do
  context 'when presence errors' do
    let(:params) { {} }

    it 'asserts operation failure' do
      expect(subject).to be_failure
    end

    context 'when errors' do
      let(:errors) { subject['contract.default'].errors.messages }

      let(:expected_errors) { ['must be filled'] }

      it 'asserts errors' do
        expect(errors[:file]).to match_array expected_errors
      end
    end
  end
end
