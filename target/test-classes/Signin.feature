@Signin
Feature:Signin
#1:  Enter First name, Last name, Email, new password, confirm password.
#  click register button
#  Expected Result: I should see my account button.
#
#  2: Enter First name Empty
#Last name, Email, new password, confirm password.
#  Expected Result: Error Message" First name is not Valid"
#
#
#
# Given, When, then
#
  @s1
  Scenario:
  Given I enter url as "https://www.d3dsecurity.co.uk"
  When I Click Register button

#   Scenario: Positive scenario. Verify registration with valid details.
#      Given I enter First Name as "test_firstname"
#      Given I enter last Name as "test_lastname"
#      Given I enter email Id as "email@gmail.com"
#      Given I enter New Password as "password123"
#      Given I enter Confirm Password as "Password123"
#      When I Click Register button
##      Then I should see my Account Button.
#@Smoke @Regression
      Scenario: Verify registration with firstname with special characters
#        When I Click Register button
        Given I enter First Name as "test_<~#@'"
        Given I enter last Name as "test_lastname"
        Given I enter email Id as "email@gmail.com"
        Given I enter New Password as "password123"
        Given I enter Confirm Password as "Password123"
        When I Click Register button
        Then I should see error message as " First Name should not be special Characters"
@Sanity @Regression
        Scenario: Varify registration with empty first name
#          When I Click Register button
          Given I enter First Name as ""
          Given I enter last Name as "test_lastname"
          Given I enter email Id as "email@gmail.com"
          Given I enter New Password as "password123"
          Given I enter Confirm Password as "Password123"
          When I Click Register button
          Then I should see error message as " First Name should is not valid"

          Scenario: Varify registration with lastname with special characters
 #           When I Click Register button
            Given I enter First Name as "test_firstname"
            Given I enter last Name as "test_<,>.~#~"
            Given I enter email Id as "email@gmail.com"
            Given I enter New Password as "password123"
            Given I enter Confirm Password as "Password123"
            When I Click Register button
            Then I should see error message as " Last Name should not be special Characters"

          Scenario: Varify registration with empty last name
#            When I Click Register button
            Given I enter First Name as "test_first name"
            Given I enter last Name as ""
            Given I enter email Id as "email@gmail.com"
            Given I enter New Password as "password123"
            Given I enter Confirm Password as "Password123"
            When I Click Register button
            Then I should see error message as " last Name should is not valid"

          Scenario: Varify registration with spacieal characters Email id
#            When I Click Register button
            Given I enter First Name as "test_first name"
            Given I enter last Name as "test_last name"
            Given I enter email Id as ":;~~<>?/"
            Given I enter New Password as "password123"
            Given I enter Confirm Password as "Password123"
            When I Click Register button
            Then I should see error message as "username is not valid"

          Scenario: Verifay registration with empty email id
#            When I Click Register button
            Given I enter First Name as "test_first name"
            Given I enter last Name as "test_last name"
            Given I enter email Id as ""
            Given I enter New Password as "password123"
            Given I enter Confirm Password as "Password123"
            When I Click Register button
            Then I should see error message as "username is not valid"

            Scenario: Verify registration with invalid new password
              Given I enter First Name as "test_first name"
              Given I enter last Name as "test_last name"
              Given I enter email Id as ""
              Given I enter New Password as "1234"
              Given I enter Confirm Password as "Password123"
              When I Click Register button
              Then I should see error message as "invalid new password"

              Scenario: Verify registration with all empty feild
                Given I enter First Name as ""
                Given I enter last Name as ""
                Given I enter email Id as ""
                Given I enter New Password as ""
                Given I enter Confirm Password as ""
                When I Click Register button
                Then I should see error message as "First name is not Valid"
                Then I should see error message as "Last name is not Valid"
                Then I should see error message as "Email id is not Valid"
                Then I should see error message as "Password is not Valid"
                Then I should see error message as "Password and confirm Password not Matching"

    Scenario: Verify registration with all empty feild
      Given I enter First Name as ""
      And I enter last Name as ""
      And I enter email Id as ""
      And I enter New Password as ""
      And I enter Confirm Password as ""
      When I Click Register button
      Then I should see error message as "First name is not Valid"
      And I should see error message as "Last name is not Valid"
      And I should see error message as "Email id is not Valid"
      And I should see error message as "Password is not Valid"
      And I should see error message as "Password and confirm Password not Matching"
















