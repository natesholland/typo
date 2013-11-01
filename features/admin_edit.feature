Feature: Merge articles

  Background:
    Given the blog is set up
    And I am logged into the admin panel

  Scenario: See merge options
    Given there is an article named "foo" with content "bar"
    Given I am on the edit page for "foo"
    Then I should see "Merge Articles"
    And I should see "Article ID"

