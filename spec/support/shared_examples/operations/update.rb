RSpec.shared_examples 'successful update operation' do |model_name|
  it 'asserts operation success' do
    expect(subject).to be_success
  end

  it 'asserts model attributes' do
    expect(model).to have_attributes params
  end

  it 'asserts model count' do
    expect { subject }.not_to change(model_name, :count)
  end
end
