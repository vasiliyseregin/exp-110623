Feature: Feragamo Tests
  Scenario: Feragamo Test #1
    Given I open url "https://www.ferragamo.com/en-us/"
    Then I click on element with xpath "//button[@data-test='icon-search']"
    Then I type "Leather Moccasin" into element with xpath "//input[@id='search-input']"
    And I press enter for element with xpath "//input[@id='search-input']"
    And I wait for 5 sec

  Scenario: Cartier Love Bracelet
    Given I open url "https://www.cartier.com/en-us/home"
    Then I click on element with xpath "//div[contains(@class, 'site-search')]"
    Then I wait for 5 sec
    Then I type "Love Bracelet" into element with xpath "//input[@id='siteSearch']"
    Then I click on element with xpath "//button[contains(text(),'Search')]"
    Then element with xpath "//div[@id='product-search-results']" should contain text "Love Bracelet"

