Feature: Send voice message

  As programmer
  I want to a voice message
  To notify someone

  Scenario: Send voice message to valid phone
    Given I have a phone number "11987654321"
    When I send voice message "Hello World"
    Then I should get status "ok"

  Scenario: Send voice message to invalid phone
    Given I have a phone number "invalid"
    When I send voice message "Hello World"
    Then I should get status "nok"
