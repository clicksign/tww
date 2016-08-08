When(/^I send voice message "([^"]*)"$/) do |message|
  @status = @client.call(@number, message)
end
