*** Settings ***
Documentation       Test File

Resource            ../config/package.resource

Suite Setup         I Create API Session


*** Test Cases ***
Scenario: Validate Response Status and User Data
    Given I Send A GET Users Request
    Then Validate User Data
