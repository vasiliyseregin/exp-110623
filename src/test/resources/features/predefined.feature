@predefined
Feature: Smoke steps

  @predefined1
  @regression
  Scenario: Predefined steps for Google
    Given I open url "https://google.com"
    Then I should see page title as "Google"
    Then I type "Cucumber" into element with xpath "//textarea[@name='q']"
    Then I click on element using JavaScript with xpath "(//input[@name='btnK'])[1]"
    # Then I wait for 2 sec
    Then I wait for element with xpath "//*[@id='res']" to be present
    Then I take screenshot
    Then I should see page title contains "- Google Search"
    Then element with xpath "//*[@id='res']" should contain text "Cucumber"

  @regression
  Scenario: Search for Cucumber on Gibiru
    Given I open url "https://gibiru.com"
    Then I should see page title as "Gibiru – Protecting your privacy since 2009"
    Then I type "Cucumber" into element with xpath "//input[@id='q']"
    Then I click on element using JavaScript with xpath "//button[@id='button-addon2']"
    # Then I wait for 2 sec
    Then I wait for element with xpath "//div[@id='web-results']" to be present
    Then I should see page title contains "Results"
    Then element with xpath "//div[@id='web-results']" should contain text "Cucumber"

  @regression
  Scenario: Calculator additions test
  Given I open url "https://www.calculator.net/"
  Then I wait for 2 sec
  Then I click on element with xpath "//span[contains(text(), '2')]"
  Then I click on element with xpath "(//span[contains(text(), '+')])[1]"
  Then I click on element with xpath "//span[contains(text(), '2')]"
  Then I click on element with xpath "//span[contains(text(), '=')]"
  Then element with xpath "//div[@id='sciOutPut']" should contain text "4"
  Then I wait for 2 sec

  @regression
  Scenario: Calculator responsive test
  Given I open url "https://www.calculator.net/"
  Then element with xpath "//div[@id='homefunbtn']" should be displayed
  Then I resize window to 700 and 400
  Then element with xpath "//div[@id='homefunbtn']" should not be displayed
  Then I wait for 2 sec




