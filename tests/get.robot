*** Settings ***
Documentation       Test File

Resource            ../config/package.resource

Suite Setup         I Create API Session


*** Test Cases ***
Scenario: Validate Status Code
    Given I Send A GET Users Request
    Then Validate User Data
