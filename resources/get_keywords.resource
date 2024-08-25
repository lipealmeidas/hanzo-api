*** Settings ***
Documentation       Test Keywords File

Resource            ../config/package.resource


*** Keywords ***
The API Is Available
    [Documentation]    Create a session with the available API.
    Create Session  jsonplaceholder     ${BASE_URL}

I Send A GET Request To /users
    [Documentation]    Sends a GET request to the '/users' endpoint.
    ${response}     GET On Session  jsonplaceholder     ${USERS_ENDPOINT}
    VAR  ${RESPONSE}  ${RESPONSE}  scope=GLOBAL

The Response Status Code Should Be 200
    [Documentation]    Verifies that the status code of the response is 200.
    ${RESPONSE}     GET     url=${BASE_URL}${USERS_ENDPOINT}  expected_status=200

The Response Should Contain 10 Users
    [Documentation]    Verifies that the response contains 10 users.
    ${RESPONSE}         GET         url=${BASE_URL}${USERS_ENDPOINT}
    VAR  ${body}  ${response.json()}  scope=LOCAL
    Length Should Be    ${body}     10

The Response Should Match The Expected JSON Structure
    [Documentation]    Validates the JSON structure of the response for the first user.
    ${RESPONSE}     GET                 url=${BASE_URL}${USERS_ENDPOINT}
    VAR  ${json_response}  ${response.json()}  scope=TEST

    Dictionary Should Contain Item  dictionary=${json_response}[0]  key=id  value=${1}
    Dictionary Should Contain Item  dictionary=${json_response}[0]  key=name  value=Leanne Graham
    Dictionary Should Contain Item  dictionary=${json_response}[0]  key=username  value=Bret
    Dictionary Should Contain Item  dictionary=${json_response}[0]  key=email  value=Sincere@april.biz
    Dictionary Should Contain Item  dictionary=${json_response}[0][address]  key=street  value=Kulas Light
    Dictionary Should Contain Item  dictionary=${json_response}[0][address]  key=suite  value=Apt. 556
    Dictionary Should Contain Item  dictionary=${json_response}[0][address]  key=city  value=Gwenborough
    Dictionary Should Contain Item  dictionary=${json_response}[0][address]  key=zipcode  value=92998-3874
    Dictionary Should Contain Item  dictionary=${json_response}[0][address][geo]  key=lat  value=-37.3159
    Dictionary Should Contain Item  dictionary=${json_response}[0][address][geo]  key=lng  value=81.1496
    Dictionary Should Contain Item  dictionary=${json_response}[0]  key=phone  value=1-770-736-8031 x56442
    Dictionary Should Contain Item  dictionary=${json_response}[0]  key=website  value=hildegard.org
    Dictionary Should Contain Item  dictionary=${json_response}[0][company]  key=name  value=Romaguera-Crona
    Dictionary Should Contain Item
    ...             dictionary=${json_response}[0][company]
    ...             key=catchPhrase
    ...             value=Multi-layered client-server neural-net
    Dictionary Should Contain Item  dictionary=${json_response}[0][company]  key=bs  value=harness real-time e-markets
