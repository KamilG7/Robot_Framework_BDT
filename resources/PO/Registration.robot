*** Settings ***
Documentation                   PO for Main Site (Landing Page)
Library                         SeleniumLibrary
Resource                        ../../data/Variables.robot
Resource                        ../DataManager.robot
Variables                        ../../Ext_Lib/RandomCredentials.py

*** Keywords ***
Navigate To
    click button                                 ${REGISTRATION_LINK}

Verify Page Loaded
    wait until page contains element             ${REGISTRATION_CONFIRMATION_LOCATOR}

Input "First Name"
    input text                   ${REGISTRATION_NAME_LOCATOR}          ${REGISTRATION_FIRST_NAME}

Input "Last Name"
    input text                   ${REGISTRATION_LAST_NAME_LOCATOR}     ${REGISTRATION_LAST_NAME}

Input "E-mail"
    input text                   ${REGISTRATION_EMAIL_LOCATOR}         ${random_email_pylib}

Input "Address"
    input text                   ${RGISTRATION_ADDRESS_LOCATOR}        ${REGISTRATION_ADDRESS}

Input "City"
    input text                   ${REGISTRATION_CITY_LOCATOR}          ${REGISTRATION_CITY}

Pick "Region"
    select from list by value      ${REGISTRATION_REGION_LOCATOR}        ${REGISTRATION_REGION}

Input "Zip Code"
    input text                   ${REGISTRATION_ZIPCODE_LOCATOR}       ${REGISTRATION_ZIPCODE}

Pick "Country"
    select from list by value      ${REGISTRATION_COUNTRY_LOCATOR}       ${REGISTRATION_COUNTRY}
    sleep                          1s

Input "Login"
    input text                   ${REGISTRATION_LOGIN_LOCATOR}         ${random_login_pylib}
    log                          ${random_login_pylib}

Input "Password" and repeat "Password"
    input text                   ${REGISTRATION_PASSWORD_LOCATOR}      ${random_password_pylib}
    input text                   ${REGISTRATION_PASSWORD_LOCATOR2}     ${random_password_pylib}
    log                          ${random_password_pylib}

Decide on Subscription
    click element                ${SUBSCRIPTION_CHECKBOX_LOCATOR}

Check Privacy Policy
    click element                ${PRIVACY_POLICY_LOCATOR}

Push "Continue" Button
    click element                ${REGISTRATION_BUTTON_LOCATOR}

Check if registration succesful
    element should contain       ${REGISTRATION_SUCCESS_LOCATOR}        ${REGISTRATION_MESSAGE}

Log Out
    mouse over                ${USER_DROPDOWN}
    click element                ${LOG_OUT_BUTTON}

Provide Register Input Data
    Input "First Name"
    Input "Last Name"
    Input "E-mail"
    Input "Address"
    Input "City"
    Pick "Country"
    Pick "Region"
    Input "Zip Code"
    Input "Login"
    Input "Password" and repeat "Password"
    Decide on Subscription
    Check Privacy Policy