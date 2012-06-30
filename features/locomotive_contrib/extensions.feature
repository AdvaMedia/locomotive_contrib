Feature: Manage site extensions
  In order to manage site extensions
  As an administrator
  I want to add/delete/manage extensions for my site

Background:
  Given I have the site: "test site" set up
  And I am an authenticated user

Scenario: Theme assets list is not accessible for non authenticated accounts
  Given I am not authenticated
  When I go to theme assets
  Then I should see "Log in"
