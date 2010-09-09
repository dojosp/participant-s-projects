Feature: Social Network
  In order to connect myself with others
  As a member
  I want to see all my friends
  
  Scenario: List friends
    Given I visit my homepag
    When I have friends
    Then I see a list of my friends