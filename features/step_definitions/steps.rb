And('I visit welcome page') do
  visit root_path
end

And('I visit Suppliers index page') do
  visit suppliers_path
end

And('I visit Products index page') do
  visit products_path
end

Then('I am redirected to {string}') do |page_name|
  expect(page).to have_current_path polymorphic_path(page_name)
end

And('I can see text {string}') do |text|
  expect(page).to have_content text
end

And('I can not see text {string}') do |text|
  expect(page).not_to have_content text
end

And('I click on {string}') do |text|
  click_on text
end

And('I can see {string} flash message with text {string}') do |type, text|
  within("#toast-container .toast.toast-#{type} .toast-message") do
    expect(page).to have_content text
  end
end

And('I create a new {string}:') do |entity_name, table|
  attributes = table.rows_hash.transform_keys { |key| key.parameterize(separator: '_') }

  create entity_name, attributes
end

And('I create import supplier') do
  create :supplier, :import
end

And('I attach {string} file to import form') do |file_name|
  within('form#import_file') do
    input = find('input#import_file_file')
    file = Rails.root.join("spec/fixtures/#{file_name}")

    input.set(file)
  end
end




