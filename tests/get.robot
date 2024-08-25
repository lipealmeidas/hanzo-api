*** Settings ***
Documentation       Test File

Resource            ../config/package.resource


*** Test Cases ***
Scenario: Validate Status Code
    Given The API Is Available
    When I Send A GET Request To /users
    Then The Response Status Code Should Be 200

Scenario: Validate Number Of Users
    Given The API Is Available
    When I Send A GET Request To /users
    Then The Response Should Contain 10 Users

Scenario: Validate JSON Structure
    Given The API Is Available
    When I Send A GET Request To /users
    Then The Response Should Match The Expected JSON Structure
