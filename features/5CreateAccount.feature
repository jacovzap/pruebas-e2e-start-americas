Feature: Create new Account at the page "Start Americas Together"
    In order to get access to the page
    As a person interested in the foundation
    I want to be able to create a new account

Scenario: Register a new user
    Given I'm on the "Start Americas Together" homepage
    And I'm on the "Login" view
    When I click on the button "Crear cuenta nueva"
    And I fill the new user input fields with the information bellow
    |Correo Electronico: 	    | m@gmail.com            |
    |Nombre: 	                | Michael                |
    |Apellido: 	                | Ramirez Torres         |
    |Telefono: 	                | 71455678               |
    |Contraseña: 	            | 12345t                 |
    |Confirmar_contraseña: 	    | 12345t                 |
    And I click on the button "Crear cuenta start"
    Then I should be returned to the login view
 

Scenario: Log in with credentials of the new user
    Given I'm on the "Start Americas Together" homepage
    And I'm on the "Login" view
    When I fill the input fields with the information bellow
    |Correo Electronico: 	    | m@gmail.com            |
    |Contraseña: 	            | 12345t                 |
    And I click on the form button "Iniciar Sesión"
    Then the welcome message should be dispayed on the screen
    And the "LOG OUT" button should appear in the page