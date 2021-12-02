Feature: Products index page

  Scenario: Products are present
    Given I create a new 'supplier':
      | Code | 1111 |
      | Name | Ruby |
    Given I create a new 'supplier':
      | Code | 2222  |
      | Name | Rails |
    Given I create a new 'supplier':
      | Code | 3333  |
      | Name | Rspec |
    Given I create a new 'product':
      | Sku           | 121212    |
      | Name          | Cucumber  |
      | Price         | 100.00    |
      | Supplier code | 1111      |
      | Column 1      | Column A1 |
      | Column 2      | Column A2 |
      | Column 3      | Column A3 |
      | Column 4      | Column A4 |
      | Column 5      | Column A5 |
    Given I create a new 'product':
      | Sku           | 232323    |
      | Name          | Selenium  |
      | Price         | 200.00    |
      | Supplier code | 2222      |
      | Column 1      | Column B1 |
      | Column 2      | Column B2 |
      | Column 3      | Column B3 |
      | Column 4      | Column B4 |
      | Column 5      | Column B5 |
    Given I create a new 'product':
      | Sku           | 343434    |
      | Name          | Capybara  |
      | Price         | 300.00    |
      | Supplier code | 3333      |
      | Column 1      | Column C1 |
      | Column 2      | Column C2 |
      | Column 3      | Column C3 |
      | Column 4      | Column C4 |
      | Column 5      | Column C5 |
    When I visit Products index page
    Then I can see in the table:
      | Sku    | Name     | Price  | Supplier code | Column 1  | Column 2  | Column 3  | Column 4  | Column 5  |
      | 121212 | Cucumber | 100.00 | 1111          | Column A1 | Column A2 | Column A3 | Column A4 | Column A5 |
      | 232323 | Selenium | 200.00 | 2222          | Column B1 | Column B2 | Column B3 | Column B4 | Column B5 |
      | 343434 | Capybara | 300.00 | 3333          | Column C1 | Column C2 | Column C3 | Column C4 | Column C5 |
    Then I can not see text 'There is no Product yet.'

  Scenario: Products are not present
    When I visit Products index page
    Then I can see text 'There is no Product yet.'
    