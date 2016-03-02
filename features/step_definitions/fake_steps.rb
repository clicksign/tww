Then(/^I should get a sent message$/) do
  expect(@client.sent).to_not be_empty
end
