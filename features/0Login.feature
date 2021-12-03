Feature: Login in the page with the credentials
    In order to interact with the functionalities of the web application
    As a registered user
    I want to login with my credentials


Scenario: Login as voluntary
    Given I'm on the "Start Americas Together" homepage
    And I click on the button "Login"
    When I fill the input fields with the information bellow
    |Correo Electronico: 	    | voluntario@gmail.com          |
    |Contraseña: 	            | 123456                        |
    And I click on the form button "Iniciar Sesión"
    Then the welcome message should be dispayed on the screen
    And the "LOG OUT" button should appear in the page


Scenario: Login as leader
    Given I'm on the "Start Americas Together" homepage
    And I click on the button "Login"
    When I fill the input fields with the information bellow
    |Correo Electronico: 	    | lider@gmail.com               |
    |Contraseña: 	            | 123456                        |
    And I click on the form button "Iniciar Sesión"
    Then the welcome message should be dispayed on the screen
    And the "LOG OUT" button should appear in the page
    

Scenario: Login as core team
    Given I'm on the "Start Americas Together" homepage
    And I click on the button "Login"
    When I fill the input fields with the information bellow
    |Correo Electronico: 	    | coreteam@gmail.com            |
    |Contraseña: 	            | 123456                        |
    And I click on the form button "Iniciar Sesión"
    Then the welcome message should be dispayed on the screen
    And the "LOG OUT" button should appear in the page
    
    
