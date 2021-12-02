And('I can see navbar brand text {string}') do |text|
  within('nav.navbar') do
    expect(page).to have_css('a.navbar-brand', text: text)
  end
end

And('I can see tabs within navbar:') do |table|
  within('nav.navbar .collapse ul.navbar-nav') do
    table.rows.flatten.each do |tab_name|
      expect(page).to have_content tab_name
    end
  end
end

When('I click on {string} within navbar') do |tab_name|
  within('nav.navbar') do
    click_on tab_name
  end
end