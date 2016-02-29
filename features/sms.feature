Feature: Send SMS

  As programmer
  I want to send an SMS
  To notify someone

  Scenario: Send SMS to valid phone
    Given I have a phone number "11987654321"
    When I send message "Hello World"
    Then I should get status "ok"

  Scenario: Send SMS to invalid phone
    Given I have a phone number "invalid"
    When I send message "Hello World"
    Then I should get status "nok"
