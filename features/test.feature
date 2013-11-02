Feature: Non-admin can't merge

  Background:
    Given the blog is set up
    Given there is an article named "foo" with content "bar" and authored by "Dan Garcia"
    Given there is an article named "bar" with content "foo" and authored by "Dan Klein"

  Scenario: WOOORK
    Given I am logged into the admin panel
    Given I show the page for article "foo"
    Then I should see "foo"
