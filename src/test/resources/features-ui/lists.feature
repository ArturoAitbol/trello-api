Feature: Lists
  Background: Create board
    Given I am on login page
    And I login with username "aamoroso@aitbol.com" and password "Arthag19"
    And I open board creation form
    When I create a board with title "UI Test"
    Then I should see board page loaded with "UI Test"

  @createList
  Scenario: Create a list
    Given I open list creation form
    When I create the list with name "In Progress"
    Then I should see the title "In Progress" in list
