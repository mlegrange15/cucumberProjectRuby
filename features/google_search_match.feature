Feature: Do websites match my search terms on Google?

  Background:
    Given I am on google.com

  Scenario: Successful search and website matches found
    When I add a "Michael" term to the search field
    And click search
    Then I should be displayed with results that have links to matching websites

  Scenario: Unsuccessful search and no website matches found
    When I add a "jdfjdsnfjdsfddbbbbdduigg" term to the search field
    And click search
    Then I get a message there were no matching websites found






