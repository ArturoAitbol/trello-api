@Board
Feature: Verify Trello Board POST method

  @createBoardRawBody
  Scenario: Create a new board describing a JSON body
    Given endpoint "/1/boards"
    And raw body:
    """
    {
      "name": "JSON board"
    }
    """
    When method POST
    Then status code 200
    And response headers contains:
      | Content-Type | application/json; charset=utf-8 |
    And response body contains:
      | name | JSON board |
    And JSON schema matches "boardSchema.json"

  @createBoardBodyMap
  Scenario: Create a new board describing the data of the body
    Given endpoint "/1/boards"
    And body data:
      | name | BodyMap Board  |
      | desc | Description    |
    When method POST
    Then status code 200
    And response headers contains:
      | Content-Type | application/json; charset=utf-8 |
    And response body contains:
      | name | BodyMap Board  |
      | desc | Description    |
    And JSON schema matches "boardSchema.json"

