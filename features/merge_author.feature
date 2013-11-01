Feature: Merging articles preserves author and comments

Background:
	Given the blog is set up
    And I am logged into the admin panel
    And there is an article named "foo" with content "happy" and authored by "Paul"
    And there is an article named "bar" with content "path" and authored by "Hilfinger"

Scenario: The author information should carry over from one article
	Given I am on the edit page for "foo"
	And I merge article "bar" into "foo"
	And I go to the show page for article "foo"
	Then I should see "Paul"
	And I should not see "Hilfinger"

