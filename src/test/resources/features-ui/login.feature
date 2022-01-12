@login
Feature: Login

  @successfully
  Scenario: Login with valid credentials
    Given I am on login page
    When I login with username "aamoroso@aitbol.com" and password "Arthag19"
    Then I should see "aamoroso@aitbol.com" in profile menu

  @negative
  Scenario: Login with incorrect credentials
    Given I am on login page
    And I login in single page with username "Juan perez" and password "123"
    Then I should see the error message "There isn't an account for this username"