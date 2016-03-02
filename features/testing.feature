@testing
Feature: Send SMS

  As programmer
  I want to fake an SMS
  To test my app

  Scenario: Fake SMS to valid phone
    Given I have a phone number "11987654321"
    When I send message "Hello World"
    Then I should get a sent message
