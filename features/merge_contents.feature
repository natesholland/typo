Feature: Merging articles preserves comments

Background:
	Given the blog is set up
    And I am logged into the admin panel
    And there is an article named "foo" with content "happy" and authored by "Paul"
    And there is an article named "bar" with content "path" and authored by "Hilfinger"
    And I add comment "This is great" to article "foo"
    And I add comment "Paul you're difficult" to article "foo"
    And I add comment "This is terribad" to article "foo"
    And I add comment "vim is greater than emacs" to article "bar"
    And I add comment "I am the notorious Paul Hilfinger" to article "bar"
    And I add comment "Don't take 164" to article "bar"

Scenario: The author information should carry over from one article
	Given I am on the edit page for "foo"
	And I merge article "bar" into "foo"
	And I go to the show page for article "foo"
	Then I should see "This is great"
	And I should see "Paul you're difficult"
	And I should see "This is terribad"
	And I should see "vim is greater than emacs"
	And I should see "I am the notorious Paul Hilfinger"
	And I should see "Don't take 164"


