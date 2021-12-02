@javascript
Feature: Products import

  Background:
    And I visit Products index page
    And I create import supplier

  Scenario: Success import
    And I can see text 'There is no Product yet.'
    Then I attach 'products.csv' file to import form
    And I click on 'Import'
    Then I can see 'success' flash message with text 'Import started succesfully!'
    Then I visit Products index page
    And I can see in the table:
      | Sku  | Name                  | Price  | Supplier code | Column 1 | Column 2 | Column 3            | Column 4     | Column 5 |
      | 1978 | Onesync GPS Power Kit | 282.97 | 2437          | GFM      | 407      | 1-976-976-6558 x867 | 607074511915 |          |
    And I can not see text 'There is no Product yet.'

  Scenario: Failed import
    And I can see text 'There is no Product yet.'
    And I click on 'Import'
    Then I can see 'error' flash message with text 'Import failed.'
    Then I visit Products index page
    And I can see text 'There is no Product yet.'
