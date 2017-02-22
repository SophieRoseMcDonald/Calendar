Feature: Events Page

  Scenario: with no events
    Given a user called Sophie
    When Sophie logs in
    And she visits the events page
    Then she sees no events
