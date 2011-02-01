Feature: User authentication
  So that I am registrated
  As an usuario
  I want to be able to sign in and out
  
  Scenario: Sign Out
    Given I am authenticated
    When I follow "Sign out"
    Then I should see "Signed out successfully."
    And I should be on articles page
    
  Scenario: Sign In
    Given I am not an authenticated
    When I follow "sign in"
    And I am authenticated
    Then I should see "Signed in successfully."
    And I should be on articles page

  Scenario: Adding an Article as not an authenticated
    Given I am not an authenticated
    When I follow "Agregar articulo"
    Then I should be on login
    
 Scenario: Browsing a list of articles
   Given I am not an authenticated
   And I should be on the article show page for "No more hello world!"
   When I follow "Eliminar"
   Then I should be on login
    
    
   
