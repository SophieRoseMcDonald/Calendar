Given(/^a user called "([^"]*)" with a password of "([^"]*)"$/) do |username, password|
  @user = User.create(email: username, password: password, password_confirmation: password)
  @password = password
  @username = username
end

Given(/^I log in$/) do
  visit('/')

end

When(/^I go to the calendar page$/) do
  pending # Write code here that turns the phrase above into concrete actions
end

Then(/^I should not see "([^"]*)"$/) do |arg1|
  pending # Write code here that turns the phrase above into concrete actions
end

Then(/^I should see "([^"]*)"$/) do |arg1|
  pending # Write code here that turns the phrase above into concrete actions
end
