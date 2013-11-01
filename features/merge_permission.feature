Feature: Non-admin can't merge

  Background:
    Given the blog is set up
    Given there is an article named "foo" with content "bar"
    Given there is an article named "bar" with content "foo"

  Scenario: Admin see merge options
    Given I am logged into the admin panel
    Given I am on the edit page for "foo"
    Then I should see "Merge Articles"
    And I should see "Article ID"

  Scenario: 
    Given I am on the edit page for "foo"
    Then I should see "Login"

