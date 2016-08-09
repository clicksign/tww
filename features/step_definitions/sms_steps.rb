Given(/^I have a phone number "([^"]*)"$/) do |number|
  @number = number
end

When(/^I send message "([^"]*)"$/) do |message|
  @status = @client.deliver(@number, message)
end

When(/^I should get status "([^"]*)"$/) do |status|
  expect(@status).to send('be_' + status)
end
