*** Settings ***
Documentation           Test cases for "Login" page
Resource                ../Resources/EcommerceApp.robot
Resource                ../resources/common.robot
Resource                ../resources/DataManager.robot
Resource                ../data/Variables.robot
Resource                ../Ext_Lib/RandomCredentials.py
Suite Setup
Test Setup              Common.Begin Web Test
Test Teardown           Common.End Web Test
Suite Teardown
# robot -d results tests/001_Login.robot

*** Test Cases ***
Login With Valid Credentials
    [Documentation]     Login should suceed with valid credentials
    [Tags]              S_1001   TC_1001
    Given User is on Login Page
    And Sign In button is displayed
    When User enters their Username and Password
    And User click Sing In button
    Then User is authenticated
    And User is on the account page

Incorrect Login Attempts Should Dispplay Correct Errors
    [Documentation]    Incorrect login attempts should trigger correct errors to be displayed
    [Tags]             S_1002, TC_1002, TC_1003, TC_1004, TC_1005, TC_1006, TC_1007
    [Template]         Failed Login Attempts Should Dispplay Correct Errors
    ${INCORRECT_LOGIN}        ${random_password_pylib}      ${LOGIN_ERROR_INCORRECT}
    ${random_login_pylib}     ${INCORRECT_PASSWORD}         ${LOGIN_ERROR_INCORRECT}
    ${INCORRECT_LOGIN}        ${INCORRECT_PASSWORD}         ${LOGIN_ERROR_INCORRECT}
    ${EMPTY}                  ${random_password_pylib}      ${LOGIN_ERROR_EMPTY}
    ${random_login_pylib}     ${EMPTY}                      ${LOGIN_ERROR_EMPTY}
    ${EMPTY}                  ${EMPTY}                      ${LOGIN_ERROR_EMPTY}
