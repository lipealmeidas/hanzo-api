*** Settings ***
Documentation       Keywords Regarding Requests in General

Resource            ../config/package.resource

*** Keywords ***
I Get On Session
    [Documentation]  Executa uma solicitação HTTP GET
    [Arguments]     ${URL}          ${EXPECTED_STATUS}

    ${res}  GET On Session
    ...     alias=api
    ...     url=${URL}
    ...     expected_status=${EXPECTED_STATUS}

    RETURN                  ${res.json()}

I Create API Session
    [Documentation]  Cria sessão para todas com autenticação para APIs em geral

    Create Session
    ...             alias=api
    ...             url=${URL}
    ...             disable_warnings=True