Given(/^I have a valid phone number$/) do
  @number = 'valid'
end

When(/^I send message "([^"]*)"$/) do |message|
  @message = message

  begin
    TWW.send_sms(@number, @message)
  rescue => ex
    @exception = ex
  end
end

Then(/^I should not get any exception$/) do
  expect(@exception).to be_nil
end
