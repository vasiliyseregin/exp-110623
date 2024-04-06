Feature: quote

  Background:
    Given I open url "https://quote-stage.portnov.com"
    Then I should see page title as "Get a Quote"
  
  Scenario: Quote page - required fields
    Then I click on element using JavaScript with xpath "//button[@id='formSubmit']"
    Then element with xpath "//label[@id='name-error']" should contain text "This field is required."
    Then element with xpath "//label[@id='username-error']" should contain text "This field is required."
    Then element with xpath "//label[@id='password-error']" should contain text "This field is required."
    Then element with xpath "//label[@id='email-error']" should be displayed
    Then element with xpath "//label[@id='agreedToPrivacyPolicy-error']" should contain text "Must check!"
    Then I take screenshot



  Scenario: Quote page - check submission with required fields
    Then I click on element with xpath "//input[@id='name']"
    Then I type "Vasiliy" into element with xpath "//input[@id='firstName']"
    Then I type "Seregin" into element with xpath "//input[@id='lastName']"
    Then I click on element with xpath "//span[contains(text(),'Save')]"
    Then I type "vasiliy.seregin" into element with xpath "//input[@name='username']"
    Then I type "vasiliy.seregin@gmail.com" into element with xpath "//input[@name='email']"
    Then I type "1234567890" into element with xpath "//input[@id='password']"
    Then I type "1234567890" into element with xpath "//input[@id='confirmPassword']"
    Then I click on element with xpath "//input[@name='agreedToPrivacyPolicy']"
    Then I click on element with xpath "//button[@id='formSubmit']"
    Then I wait for element with xpath "//legend[contains(text(),'Submitted Application')]" to be present
    Then I take screenshot

  Scenario Outline: Quotes requests for users
    Given I open url "https://quote-stage.portnov.com"
    Then I click on element with xpath "//input[@id='name']"
    Then I type "<FirstName>" into element with xpath "//input[@id='firstName']"
    And I type "<MiddleName>" into element with xpath "//input[@id='middleName']"
    And I type "<LastName>" into element with xpath "//input[@id='lastName']"
    Then I click on element with xpath "//span[contains(text(),'Save')]"
    Then element with xpath "//input[@id='name']" should contain text "<FullName>"
    Then element with xpath "//input[@id='name'" should have attribute "value" as "<FullName>"
    Then I wait for 2 sec
    Examples:
    | FirstName | MiddleName | LastName | FullName  |
    | Test      | Testovich  | Testov   | Test Testovich Testov |
    | John      |            | Doe      | John Doe              |
    | Vasiliy   |            | Seregin  | Vasiliy Seregin       |


    