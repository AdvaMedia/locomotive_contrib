Feature: Manage site extensions
  In order to manage site extensions
  As an administrator
  I want to add/delete/manage extensions for my site

Background:
  Given I have the site: "test site" set up
  And I am an authenticated user

Scenario: Extensions list is not accessible for non authenticated accounts
  Given I am not authenticated
  When I go to extensions page
  Then I should see "Log in"

Scenario: Add new extension to the site
  When I go to extensions page
  And I follow "Add extension"
  And I select "Site map" from "Slug"
  And I press "Add"
  Then I should see "Extension was successfully added."
