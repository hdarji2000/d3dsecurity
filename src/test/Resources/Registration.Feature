@Registration
Feature:Registration
Scenario: This is with Test
Given I enter url as "https://www.d3dsecurity.co.uk"
When I Click Register button
Given I enter First Name as "test_first name"
Given I enter last Name as "test_last name"
Given I enter email Id as "email@gmail.com"
Given I enter New Password as "Password123"
Given I enter Confirm Password as "password123"
When I Click send Register button
Then I should see my Account page


Scenario:This is with Test1
Given I enter url as "https://www.d3dsecurity.co.uk"
When I Click Register button
Given I enter First Name as "test_first name1"
Given I enter last Name as "test_last name1"
Given I enter email Id as "email@gmail.com1"
Given I enter New Password as "password123_1"
Given I enter Confirm Password as "Password123_1"
When I Click send Register button
Then I should see my Account page

#Scenario:This is with Test2
#Given I enter url as "https://www.d3dsecurity.co.uk"
#When I Click Register button
#Given I enter First Name as "test_first name2"
#Given I enter last Name as "test_last name2"
#Given I enter email Id as "email@gmail.com2"
#Given I enter New Password as "password123_2"
#Given I enter Confirm Password as "Password123_2"
#When I Click send Register button
#Then I should see my Account page

  Scenario: This is with Test3
    Given I enter url as "https://www.d3dsecurity.co.uk"
    When I Click Register button
    Given I enter First Name as "test_first name3"
    Given I enter last Name as "test_last name3"
    Given I enter email Id as "email@gmail.com3"
    Given I enter New Password as "password123_3"
    Given I enter Confirm Password as "Password123_3"
    When I Click send Register button
    Then I should see my Account page

  Scenario Outline:
    Given I enter url as "<URL>"
    When I Click Register button
    Given I enter First Name as "<first_name>"
    Given I enter last Name as "<Last_name>"
    Given I enter email Id as "<email id>"
    Given I enter New Password as "<pwd>"
    Given I enter Confirm Password as "<Pwd1>"
    When I Click send Register button
    Then I should see my Account page

    Examples:

      | URL                           | first_name      | last_name      | emailid            | pwd           | pwd1          |
      | https://www.d3dsecurity.co.uk | test_firstname  | test_lastname  | emailid@gmail.com  | password123   | password123   |
      | https://www.d3dsecurity.co.uk | test_firstname1 | test_lastname1 | emailid1@gmail.com | password123_1 | password123_1 |
      | https://www.d3dsecurity.co.uk | test_firstname2 | test_lastname2 | emailid2@gmail.com | password123_2 | password123_2 |
      | https://www.d3dsecurity.co.uk | test_firstname3 | test_lastname3 | emailid3@gmail.com | password123_3 | password123_3 |
















