RSpec.shared_examples 'failed save operation' do |model_name|
  it 'asserts operation failure' do
    expect(operation).to be_failure
  end

  it 'asserts model count' do
    expect { operation }.not_to change(model_name, :count)
  end
end
