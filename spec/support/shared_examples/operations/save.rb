RSpec.shared_examples 'failed save operation' do |model_name|
  it 'asserts operation failure' do
    expect(subject).to be_failure
  end

  it 'asserts model count' do
    expect { subject }.not_to change(model_name, :count)
  end
end