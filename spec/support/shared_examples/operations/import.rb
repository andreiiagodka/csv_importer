RSpec.shared_examples 'successful import operation' do |model_name, csv_parser|
  it 'asserts operation success' do
    expect(operation).to be_success
  end

  it 'asserts model count' do
    expect { operation }.to change(model_name, :count).from(0).to(1)
  end

  context 'when chunks' do
    let(:expected_chunks) { csv_parser.new(file).call }

    it 'asserts rows' do
      expect(subject[:chunks]).to match_array expected_chunks
    end
  end

  context 'when model' do
    let(:model) { operation[:model] }

    let(:expected_model) do
      model = ImportFile.new
      model.file = params[:import_file][:file]
      model
    end

    it 'asserts model' do
      expect(operation[:model]).to eq expected_model
    end
  end
end

RSpec.shared_examples 'failed import operation' do
  context 'when presence errors' do
    let(:file) { nil }

    it 'asserts operation failure' do
      expect(operation).to be_failure
    end

    context 'when errors' do
      let(:errors) { operation['contract.default'].errors.messages }

      let(:expected_errors) { ['must be filled'] }

      it 'asserts errors' do
        expect(errors[:file]).to match_array expected_errors
      end
    end
  end
end
