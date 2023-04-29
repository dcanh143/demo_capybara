Feature: Search iphone
  Scenario: As a userI should be able to search for an "iphone 14" and get matching result
    Given I visit "https://www.amazon.in"
    When I search for "iphone 14"
    Then I should see search results for "iphone 14"

  Scenario: As a userI should be able to search for an "iphone 14" and get matching result
    Given I visit to "https://www.amazon.in"
    When I search for an "iphone 14"
    Then I click to the first results of "iphone 14" and I visit "https://www.amazon.in/Apple-iPhone-14-128GB-Midnight/dp/B0BDHX8Z63/ref=sr_1_3?keywords=iphone+14&qid=1682769360&sr=8-3"
    Then I should see matching information for "iphone 14"
  