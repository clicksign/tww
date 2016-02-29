Feature: Send SMS

  As programmer
  I want to send an SMS
  To notify someone

  Scenario: Send SMS to valid phone
    Given I have a valid phone number
    When I send message "Hello World"
    Then I should get status "ok"
