Feature: Use functionalities on page "Perfil"
    As a registered user
    I want to use the functionalities on the page "Perfil"
    So I can view and manage my information

Scenario: View My Events
    Given I'm logged on the "Start Americas Together" page
    And I'm on the "Perfil" view
    When I click on the button "MIS EVENTOS"

Scenario: View My Projects
    Given I'm logged on the "Start Americas Together" page
    And I'm on the "Perfil" view
    When I click on the button "MIS PROYECTOS"


Scenario: Edit Profile
    Given I'm logged on the "Start Americas Together" page
    And I'm on the "Perfil" view
    When I click on the button "EDITAR PERFIL"
    And I fill the input fields with the information below
    |||


Scenario: Delete Profile
    Given I'm logged on the "Start Americas Together" page
    And I'm on the "Perfil" view
    When I click on the button "ELIMINAR PERFIL"
    Then A confirmation message should appear on the screen
   