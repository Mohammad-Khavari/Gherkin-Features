Feature: Vote Test

  # This will test the vote scenarios on Hazu
  Scenario: After logging out the grey thumb should be visible
    Given I create an item
    And I vote on item
    And I verify the vote is visible
    And I verify if the vote cont is (-1)
    When I log out 
    Then I am not able to vote
    When I verify the vote count it should be (-1)
    And I log in again
    Then I delete the item
