Given(/^I have a phone number "([^"]*)"$/) do |number|
  @number = number
end

Given(/^I have a invalid phone number$/) do
  pending # Write code here that turns the phrase above into concrete actions
end

When(/^I send message "([^"]*)"$/) do |message|
  @status = @client.sms(@number, message)
end

When(/^I should get status "([^"]*)"$/) do |status|
  expect(@status).to send('be_' + status)
end
