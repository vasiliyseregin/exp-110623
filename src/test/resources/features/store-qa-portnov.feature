Feature: Store QA Portnov

  Scenario: Landing Page
    Given I open url "https://store-qa.portnov.com/"
    Then I should see page title as "e-commerce – Automation Practice Website"
    Then I click on element with xpath "//a[@href='https://store-qa.portnov.com/product-category/mac/']"
    Then I should see page title contains "Mac"
    Then I click on element with xpath "//a[@href='https://store-qa.portnov.com/product-category/iphone/']"
    Then I should see page title contains "iPhone"
    Then I click on element with xpath "//a[@href='https://store-qa.portnov.com/product-category/watch/']"
    Then I should see page title contains "Watch"
    Then I click on element with xpath "//a[@href='https://store-qa.portnov.com/product-category/accessories/']"
    Then I should see page title contains "Accessories"
    Then I click on element with xpath "//a[@class='cart-contents']"
    Then I should see page title contains "Cart"
    Then I wait for 2 sec
    



