@Board
Feature: Trello get all Boards

  As an user
  I want to get all boards from Trello
  Verifying the status code.

  @getAllBoards
  Scenario: Verify status code from all Boards
    Given endpoint "/1/members/me/boards"
    When method GET
    Then status code 200

