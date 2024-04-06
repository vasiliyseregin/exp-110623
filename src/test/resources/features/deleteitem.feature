Feature: nopCommerce

  Scenario: Deleting From Cart
    Given I open url "https://nop-qa.portnov.com/"
    Then I mouse over element with xpath "//li[contains(a/text(),'Computers')]"
    Then I click on element with xpath "//a[@href='/desktops']"
    Then I click on element with xpath "//h2[@class='product-title']//a[contains(text(),'Build')]"
    Then I click on element with xpath "//select[@name='product_attribute_2']//option[@value='3']"
    Then I click on element with xpath "//input[@id='product_attribute_3_6']"
    Then I clear element with xpath "//input[@id='product_enteredQuantity_1']"
    Then I type "2" into element with xpath "//input[@id='product_enteredQuantity_1']"
    Then I click on element with xpath "//button[@id='add-to-cart-button-1']"
    Then I click on element with xpath "//a[@href='/books']"
    Then I click on element with xpath "//button[@class='button-2 product-box-add-to-cart-button'] "
    Then I click on element using JavaScript with xpath "//span[contains(text(),'Shopping cart')]"
    Then I click on element with xpath "//button[@class='remove-btn']"
    Then I wait for 5 sec