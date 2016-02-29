Given(/^I have a valid phone number$/) do
  @number = '11987654321'
end

When(/^I send message "([^"]*)"$/) do |message|
  @status = @client.deliver(@number, message)
end

When(/^I should get status "([^"]*)"$/) do |status|
  expect(@status).to send('be_' + status)
end
