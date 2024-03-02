*** Settings ***
Documentation                   PO for Site with Login Form and Registration Button
Library                         SeleniumLibrary
Resource                        ../../data/Variables.robot

*** Keywords ***
Navigate To
    click link                                          ${LOGIN_REGISTRATION_LINK}

Verify Page Loaded
    wait until page contains element                    ${LOGIN_REGISTRATION_CONFIRMATION_LOCATOR}


Check if Sign In button displayed
    wait until page contains element                    ${LOGIN_BUTTON_LOCATOR}

Input "Login"
    input text                                          ${LOGIN_LOGIN_LOCATOR}            ${random_login_pylib}

Input "Password"
    input text                                          ${LOGIN_PASSWORD_LOCATOR}         ${random_password_pylib}

User Logged In
    wait until page contains element                    ${LOGIN_AUTHENTICATION_LOCATOR}

User Authenticated
    element text should be                              ${LOGIN_AUTHENTICATION_LOCATOR}   ${REGISTRATION_FIRST_NAME}

Log In Button Click
    click element                                       ${LOGIN_BUTTON_LOCATOR}

"My Account" page veryfication
    wait until page contains element                    ${LOGIN_MY_ACCOUNT_LOCATOR}

Template User enter incorrect "Login" or "Password"
    [Arguments]                                         ${Login}                         ${Password}
    input text                                          ${LOGIN_LOGIN_LOCATOR}           ${Login}
    input text                                          ${LOGIN_PASSWORD_LOCATOR}        ${Password}

Template User should see correct "Error Message"
    [Arguments]                                         ${error_message}
    element should contain                              ${LOGIN_ERROR_LOCATOR}      ${error_message}