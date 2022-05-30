*** Settings ***
Documentation  This is some basic info about the suite
Resource    ../Resources/Amazon.robot
Resource    ../Resources/Common.robot
Suite Setup    Insert Testing Data
Test Setup    Open vinnyz browser
Test Teardown      End Web Test
Suite Teardown    Cleanup Testing Data

*** Variables ***
${myFirstVariable} =    testing vinny
@{myFirstListVariable} =    testing vinny1    testing vinny2    testing vinny3

*** Test Cases ***
User must sign in to check out
    [Documentation]  This is some basic info about the test
    [Tags]  Smoke
    Amazon.Product Search Actions
    Log    ${myFirstVariable}
    Log    ${myFirstListVariable}[1]
User must sign in to check out 2
    [Documentation]  This is some basic info about the test
    [Tags]  Smoke
    ${mySecondVariable} =    set variable    testing vinny second variable
    @{mySecondListVariable} =    create list    testing vinny second variable1    testing vinny second variable2
    Log    ${mySecondVariable}
    Log    ${mySecondListVariable}[1]
    Amazon.Product Search Actions

