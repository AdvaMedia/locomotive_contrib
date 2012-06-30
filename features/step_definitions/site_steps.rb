# Creates a Locomotive::Site record
#
# examples:
# - I have the site: "some site" set up
# - I have the site: "some site" set up with name: "Something", domain: "test2"
#
Given /^I have the site: "([^"]*)" set up$/ do |site_factory|
  Thread.current[:site] = nil
  @site = create(site_factory)
  @site.should_not be_nil

  @admin = @site.memberships.first.account
  @admin.should_not be_nil
end

Given /^I have a site set up$/ do
  step %{I have the site: "test site" set up}
end

Given /^I have a designer and an author$/ do
  create(:designer, :site => Locomotive::Site.first)
  create(:author, :site => Locomotive::Site.first)
end

Then /^I should be a administrator of the "([^"]*)" site$/ do |name|
  site = Locomotive::Site.where(:name => name).first
  m = site.memberships.detect { |m| m.account_id == @admin._id && m.admin? }
  m.should_not be_nil
end
