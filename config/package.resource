*** Settings ***
Documentation       File and Library Mapping File

Library             Collections
Library             OperatingSystem
Library             String
Library             SeleniumLibrary
Library             yaml
Library             RequestsLibrary
Resource            ../resources/get_keywords.resource
Resource            ../resources/requests_actions.resource


*** Variables ***
${URL}         https://jsonplaceholder.typicode.com
${USERS_ENDPOINT}   /users
