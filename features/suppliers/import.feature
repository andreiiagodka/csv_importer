@javascript
Feature: Suppliers import

  Background:
    And I visit Suppliers index page

  Scenario: Success import
    And I can see text 'There is no Supplier yet.'
    Then I attach 'suppliers.csv' file to import form
    And I click on 'Import'
    Then I can see 'success' flash message with text 'Import started succesfully!'
    Then I visit Suppliers index page
    And I can see in the table:
      | Code | Name             |
      | 1443 | Spencer-Turcotte |
    And I can not see text 'There is no Supplier yet.'

  Scenario: Failed import
    And I can see text 'There is no Supplier yet.'
    And I click on 'Import'
    Then I can see 'error' flash message with text 'Import failed.'
    Then I visit Suppliers index page
    And I can see text 'There is no Supplier yet.'
