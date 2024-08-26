*** Settings ***
Documentation       Test Keywords File

Resource            ../config/package.resource


*** Variables ***
${RES_GET_USERS}    ${EMPTY}


*** Keywords ***
I Send A GET Users Request
    [Documentation]    Sends a GET request to the '/users' endpoint.

    ${res}  I Get On Session    URL=${USERS_ENDPOINT}   EXPECTED_STATUS=200
    VAR  ${RES_GET_USERS}  ${res}  scope=Test

Validate User Data
    [Documentation]    Verifies the details of the user data returned by the API.

    VAR    @{expected_filds}
    ...    id
    ...    name
    ...    username
    ...    email
    ...    address
    ...    phone
    ...    website
    ...    company

    FOR    ${item}    IN    @{RES_GET_USERS}
        Validate Registered Users  ${item}  @{expected_filds}
    END

Validate Registered Users
    [Documentation]    Confirms that the registered users match the expected criteria.
    ...
    ...  Args:
    ...    ${item}: <description>
    ...    @{expected_fields}: <description>
    [Arguments]     ${item}     @{expected_fields}

    FOR    ${field}    IN    @{expected_fields}
        Dictionary Should Contain Key  ${item}  ${field}
        
        ${value}                Get From Dictionary     ${item}     ${field}
        Should Not Be Empty     "${value}"
    END
