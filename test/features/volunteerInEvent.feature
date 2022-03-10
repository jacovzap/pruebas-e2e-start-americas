Feature: Participate in events
    In order to help to other people and make an impact to the society
    As a volunteer
    I want to participate in events

Background:
    Given I am logged in the Start Americas Together page

Scenario Outline: Be part of prueba event
    Given I see the Start Americas Together page and events title
    And I scroll the page
    When I click on the Explorar Eventos button
    And I should see the events page
    And I press the button of Participar in the test event
    Then I should see the Dejar de Participar button