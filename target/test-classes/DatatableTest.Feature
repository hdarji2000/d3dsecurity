@regression
Feature:

  Scenario: Positive scenario. Verify registration with valid details.
   Given I enter url as "https://www.d3dsecurity.co.uk"
 #   When I Click Register button
 #   Given I enter First Name as "test_firstname"
 #   Given I enter last Name as "test_lastname"
 #   Given I enter email Id as "email4@gmail.com"
 #   Given I enter New Password as "password123"
 #   Given I enter Confirm Password as "Password123"
 #   When I Click Register button on Registration page
 #   Then I should see my Account text
 #   And I should see url as "https://www.d3dsecurity.co.uk/my-account/"
#  And I should see Login text
#  And I should see Register text
#  And I should see Username field
#  And I should see Password field
#  And I should see Login Button
#  And I should see "Lost your password?" Link
#  And I should see Email address field
#  And I should see Register Password field
#  And I should see Register Button

  Scenario Outline: Positive scenario. Verify registration with valid details.
    Given I enter url as "https://www.d3dsecurity.co.uk"
#    When I Click Register button
#    Given I enter First Name as "<firstname>"
#    Given I enter last Name as "<lastname>"
#    Given I enter email Id as "<Emailid>"
#    Given I enter New Password as "<password>"
#    Given I enter Confirm Password as "<confirmPassword>"
#    When I Click Register button on Registration page
#    Then I should see my Account text
#    And I should see url as "https://www.d3dsecurity.co.uk/my-account/"
#    Then I  Given I enter url as "https://www.d3dsecurity.co.uk"
#    When I Click Register button
#    Given I enter First Name as "test_firstname"
#    Given I enter last Name as "test_lastname"
#    Given I enter email Id as "email4@gmail.com"
#    Given I enter New Password as "password123"
#    Given I enter Confirm Password as "Password123"
#    When I Click Register button on Registration page
#    Then I should see error messages as"<ErrorMessage>"


    Examples:
      | firstname | lastname      | Emailid        | password    | confirmPassword | ErrorMessage            |
      |           | test_lastname | test@test1.com | password123 | password123     | First Name is not valid |

#  Scenario: Positive scenario. Verify registration with valid details.
#    Given I enter url as "https://www.d3dsecurity.co.uk"
#    When I Click Register button
#    Given I enter bellow detail
#      | firstname      | lastname      | email_id          | newpassword | confirmpassword |
#      | test_firstname | test_lastname | emailid@gmail.com | password123 | password123     |
#    When I Click Register button
#    Then I should see my Account Button
#
#  Scenario: Positive scenario. Verify registration with valid details.
#    Given I enter url as "https://www.d3dsecurity.co.uk"
#    When I Click Register button
#    Given I enter bellow detail
#      | test_firstname | test_lastname | emailid@gmail.com | password123 | password123     |
#    When I Click Register button
#    Then I should see my Account Button
