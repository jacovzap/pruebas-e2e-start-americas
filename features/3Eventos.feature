Feature: Use functionalities on page Eventos
    As a registered user
    I want to interact with the functionalities of the page "Eventos"
    so I can be part of the foundation events

@create_event
Scenario: Create an Event
    Given I'm logged on the "Start Americas Together" page
    And I'm on the "Eventos" view
    When I click on the event button "Crear Evento"
    And I fill the event input fields with the information below
    |Nombre del evento:   |Marcha Pacifica            |
    |Descripcion: 	      |Marcha contra los chaqueos |
    |Lugar: 	          |Plaza principal            |
    And I click on the form button "Registrar Evento"
    And I accept the confirmation message
    Then the event "Marcha Pacifica" exists in the event list
    And the event should have the title "Marcha Pacifica"
    And the event should have the description "Marcha contra los chaqueos"
    And the event should have the place "Plaza principal"

@archive_event
Scenario: Archive an Event
    Given I'm logged on the "Start Americas Together" page
    And I'm on the "Eventos" view
    And the event "Marcha Pacifica" exists in the event list
    When I click on the button "Archivar" of the event "Marcha Pacifica"
    Then the event "Marcha Pacifica" should dissapear from the event list
    And the event "Marcha Pacifica" should appear in the past event list


@view_archieved_events
Scenario: View Archieved Events
    Given I'm logged on the "Start Americas Together" page
    And I'm on the "Eventos" view
    And the event "Marcha Pacifica" exists in the event list
    When I click on the button "Eventos Pasados"
    Then I should see a list of past Events
    And I should see the button "Volver"


@unarchive_event
Scenario: Unarchive Event
    Given I'm logged on the "Start Americas Together" page
    And I'm on the "Eventos" view
    And the event "Marcha Pacifica" exists in the past event list
    When I click on the button "Mostrar" of the event "Marcha Pacifica"
    Then the event "Marcha Pacifica" should appear in the event list
    And I should see the button "Eventos Pasados"
 

@participate
Scenario: Participate in Event
    Given I'm logged on the "Start Americas Together" page
    And I'm on the "Eventos" view
    And the event "Marcha Pacifica" exists in the event list
    When I click on the button "Participar" of the event "Marcha Pacifica"
    And I accept the confirmation message
    Then I should see the button "Eliminar Participacion" in the event "Marcha Pacifica"
    
@dont_participate
Scenario: Participate in Event
    Given I'm logged on the "Start Americas Together" page
    And I'm on the "Eventos" view
    And the event "Marcha Pacifica" exists in the event list
    When I click on the button "Eliminar Participacion" of the event "Marcha Pacifica"
    And I accept the confirmation message
    Then I should see the button "Participar" in the event "Marcha Pacifica"

    
@delete
Scenario: Delete Event
    Given I'm logged on the "Start Americas Together" page
    And I'm on the "Eventos" view
    And the event "Marcha Pacifica" exists in the event list
    When I click on the button "Eliminar" of the event "Marcha Pacifica"
    Then the event "Marcha Pacifica" should dissapear from the event list
