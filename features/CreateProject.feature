Feature: Create project with coreteam account 
    In order to interact with the functionalities of the web application
    As a registered user
    I want to create my own project

Background:
    Given I have browsed to the Start Americas Together login page 

Scenario Outline: Login as coreteam
    Given I have entered "<e-mail>" into the email field
    And I have entered "<password>" into the password field
    When I press the "Iniciar Sesión" button
    Then the welcome message should be dispayed on the screen
Examples:
    | e-mail                                 | password   |
    | core.team.start@start.com              | coreteam1  |

Background:
    Given I have created one project with my account

Scenario: Create project as coreteam
    Given I have created one project with my account
    And I have pressed the  "Proyectos" button
    And I have pressed the  "Crear Proyecto" button
    When I press the  "Crear Proyecto" button
    Then go to the form "Crear Proyecto"