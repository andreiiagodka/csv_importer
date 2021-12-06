Feature: Suppliers index page

  Scenario: Suppliers are present
    Given I create a new 'supplier':
      | Code | 1111 |
      | Name | Ruby |
    Given I create a new 'supplier':
      | Code | 2222  |
      | Name | Rails |
    Given I create a new 'supplier':
      | Code | 3333  |
      | Name | Rspec |
    When I visit Suppliers index page
    Then I can see in the table:
      | Code | Name  |
      | 1111 | Ruby  |
      | 2222 | Rails |
      | 3333 | Rspec |
    Then I can not see text 'There is no Supplier yet.'

  Scenario: Suppliers are not present
    When I visit Suppliers index page
    Then I can see text 'There is no Supplier yet.'
