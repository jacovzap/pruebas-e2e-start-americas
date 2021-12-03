Feature: Use functionalities on page "Proyectos"
    As a registered user
    I want to interact with the functionalities of the page "Proyectos"
    so I can be part of the foundation projects


Scenario: Create a Project
    Given I'm logged on the "Start Americas Together" page
    And I'm on the "Proyectos" view
    When I click on the button "Crear proyecto"
    And I fill the input fields of project with the information bellow
    |Titulo: 	            | Salvemos nuestra tierra       |
    |Descripcion: 	        | Son necesarias nuevas medidas para frenar los crecientes incendios forestales   |
    |Objetivo: 	            | Crear leyes de proteccion     |
    |Lider: 	            | Frank                         |
    And I click on the form button "Crear"
    Then the project "Salvemos nuestra tierra" exists in the project list
    And the project should have the title "Salvemos nuestra tierra"
    And the project should have the description "Son necesarias nuevas medidas para frenar los crecientes incendios forestales"
    And the project should have the objetive "Crear leyes de proteccion"
    And the project should have the leader "Frank"



Scenario: Participate in a project
    Given I'm logged on the "Start Americas Together" page
    And I'm on the "Proyectos" view
    And the project "Salvemos nuestra tierra" exists in the project list
    When I click on the button "Participar" of the project "Salvemos nuestra tierra"
    Then the message "Se registro la participacion con exito" is displayed at the screen
 

@edit_project
Scenario: Edit a project
    Given I'm logged on the "Start Americas Together" page
    And I'm on the "Proyectos" view
    And the project "Salvemos nuestra tierra" exists in the project list
    When I click on the button "Editar" of the project "Salvemos nuestra tierra"
    And I fill the input fields of project with the information bellow
    |Titulo: 	            | Salvemos nuestros bosques     |
    |Descripcion: 	        | Son necesarias nuevas medidas para frenar los crecientes incendios forestales   |
    |Objetivo: 	            | Parar la quema de arboles     |
    |Lider: 	            | Adam                          |
    And I click on the form button "Editar"
    Then the project "Salvemos nuestros bosques" exists in the project list
    And the project should have the title "Salvemos nuestros bosques"
    And the project should have the description "Son necesarias nuevas medidas para frenar los crecientes incendios forestales"
    And the project should have the objetive "Parar la quema de arboles"
    And the project should have the leader "Adam"


@delete_project
Scenario: Delete a project
    Given I'm logged on the "Start Americas Together" page
    And I'm on the "Proyectos" view
    And the project "Salvemos nuestra tierra" exists in the project list
    When I click on the button "Eliminar" of the project "Salvemos nuestra tierra"
    Then the project "Salvemos nuestra tierra" should dissapear from the project list