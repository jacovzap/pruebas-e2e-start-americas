Feature: Use functionalities on page "Perfil"
    As a registered user
    I want to use the functionalities on the page "Perfil"
    So I can view and manage my information

Scenario: View My Events
    Given I'm logged on the "Start Americas Together" page
    And I'm on the "Perfil" view
    When I click on the button "Mis Eventos"
    Then I should see the events I accepted to participate

Scenario: View My Projects
    Given I'm logged on the "Start Americas Together" page
    And I'm on the "Perfil" view
    When I click on the button "Mis Proyectos"
    Then I should see the projets I accepted to participate


Scenario: Delete Profile
    Given I'm logged on the "Start Americas Together" page
    And I'm on the "Perfil" view
    When I click on the button "Eliminar perfil"
    Then A confirmation message should appear on the screen
    And I should logout from the page
   