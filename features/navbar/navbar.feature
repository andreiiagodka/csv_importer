Feature: Navbar

  Background:
    When I visit welcome page

  Scenario: Tabs
    And I can see navbar brand text 'CSV Importer'
    And I can see tabs within navbar:
      | Supplier |
      | Product  |

  Scenario Outline: Click Tabs
    When I click on '<tab>' within navbar
    Then I am redirected to '<page>'
  
    Examples:
      | tab          | page      |
      | CSV Importer | root      |
      | Supplier     | suppliers |
      | Product      | products  |
