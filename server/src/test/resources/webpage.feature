Feature: Webpage page for Randy's Candies re-ordering functionality

  Scenario : Testing the weborder functionality for maximum order (Happy path)
    Given User puts how many of each items he wants to re-order
    When User provides amount that equals Capacity minus Amount in Stock
    And Clicks Determine Re-Order Cost Button
    Then User need to be able to see correct total cost

    Scenario: Testing the weborder functionality (Negative Test 1)
    Given User puts how many of each items he wants to re-order
      When User provides order amount that is not equals or less Capacity minus Amount in Stock
      And Clicks Determine Re-Order Cost Button
      Then User validates that order amount will show maximum of Capacity minus Amount in Stock

  Scenario: Testing the weborder functionality (Negative Test 2)
    Given User puts how many of each items he wants to re-order
    When User provides order amount as 0
    And Clicks Determine Re-Order Cost Button
    Then User validates Total Cost as 0

  Scenario : Testing the weborder functionality for minimum order
    Given User puts  minimum amount of each items he wants to re-order
    When User provides order amount as 1 for each items
    And And Clicks Determine Re-Order Cost Button
    Then User validates total cost as 2.57$


    #as additional i would also validate that get low -stock items is clickable















