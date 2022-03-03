Feature: Create Event
    In order to help the community through different projects
    As a registered user with leader role
    I want to create an event

Background:
    Given I am logged in the Start Americas Together page

Scenario: Add new event
    Given I see the Start Americas Together page and "Tus Próximos Eventos" title
    And I scroll the page
    When I click on the Explorar Eventos button
    Then I should see the "Eventos Vigentes" page

