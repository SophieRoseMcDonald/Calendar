Feature: The calendar page

  @javascript
  Scenario: A calendar with no events
    Given a user called "sophie@test.com" with a password of "password"
    And I log in
    When I go to the calendar page
    Then I should not see "my event"

  Scenario: A calendar with an event
    Given a user called "sophie@test.com" with a password of "password"
    And I log in
    When I go to the calendar page
    Then I should see "my event"
