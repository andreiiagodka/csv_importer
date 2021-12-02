Then('I can see in the table:') do |table|
  within('table.table') do
    assert_headers!(table)
    assert_content!(table)
  end
end

private

def assert_headers!(table)
  within('thead tr') do
    table.headers.each do |header_name|
      expect(page).to have_css('th.text-center', text: header_name)
    end
  end
end

def assert_content!(table)
  rows = table.rows

  within('tbody') do
    all('tr').each_with_index do |tr, index|
      rows[index].each do |value|
        expect(tr).to have_css('td.text-center', text: value)
      end
    end
  end
end
