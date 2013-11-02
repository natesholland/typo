Feature: Merge article content

  Background:
    Given the blog is set up
    Given I am logged into the admin panel
    Given there is an article named "foo" with content "Paul" and authored by "Armando"
    Given there is an article named "bar" with content "Hilfinger" and authored by "Dave"

  Scenario: Admin merge article content
    Given I am on the edit page for "foo"
    And I merge article "bar" into "foo"
    And I go to the show page for article "foo"
    Then I should see "Paul"
    And I should see "Hilfinger"