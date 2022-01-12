Feature: Boards
  Background: Login
    Given I am on login page
    When I login with username "aamoroso@aitbol.com" and password "Arthag19"

  @createBoard
  Scenario: Create a board
    Given I open board creation form
    When I create a board with title "Test UI"
    Then I should see board page loaded with "Test UI"

  @createBlueBoard
  Scenario: Create a board with data parameters
    Given I open board creation form
    When I create a board with following data
      | Title | New Board |
      | Theme | Blue      |
    Then I should see board page loaded with "New Board"

