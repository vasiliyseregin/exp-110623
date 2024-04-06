Feature: Automate the FLEA Market

  @flea1
  Scenario: Landing Page
    Given I visit FLEA Market in the "qa" Environment
    Then I verify title is "e-commerce – Automation Practice Website" for the page
    When I verify and Click on "Mac" Category on the Top Bar
    Then I verify Cart Icon is present
    Then I verify Image Slider is present
    Then I verify Contact button functionality


  @flea2
  Scenario Outline: Landing page category tests
    Given I visit FLEA Market in the "qa" Environment
    Then I verify title is "e-commerce – Automation Practice Website" for the page
    Then I verify and Click on "<name>" Category on the Top Bar
    Examples:
      | name           |
      | Mac            |
      | iPhone         |
      | Watch          |
      | Accessories    |

  @flea3
  Scenario Outline: Product Page
    Given I visit FLEA Market in the "stage" Environment
    Then I click on element "<AirPods Pro>"
    Examples:
      |name                       |
      |AirPods Pro                |



