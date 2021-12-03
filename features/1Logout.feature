Feature: Logout from the page "Start Americas Together"
    In order to close my account from the page
    As a registered user
    I want a function to logout

Scenario: Logout as voluntary
    Given I'm logged on the page as voluntary
    And I'm on the homepage
    When I click on the button "Log out"
    Then the "LOGIN" button should appear on the page

Scenario: Logout as leader
    Given I'm logged on the page as leader
    And I'm on the homepage
    When I click on the button "Log out"
    Then the "LOGIN" button should appear on the page

Scenario: Logout as team core
    Given I'm logged on the page as team core
    And I'm on the homepage
    When I click on the button "Log out"
    Then the "LOGIN" button should appear on the page