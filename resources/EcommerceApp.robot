*** Settings ***
Documentation           Script gruping pre-defined keywords into test steps
Resource                ./PO/Landing.robot
Resource                ./PO/LoginRegistration.robot
Resource                ./PO/Registration.robot

*** Keywords ***
User is on the registration page
    Landing.Navigate To
    Landing.Verify Page Loaded
    LoginRegistration.Navigate To
    LoginRegistration.Verify Page Loaded
    Registration.Navigate To
    Registration.Verify Page Loaded


User is on Login Page
    Landing.Navigate To
    Landing.Verify Page Loaded
    LoginRegistration.Navigate To
    LoginRegistration.Verify Page Loaded

User fills in the registration form with valid details
    Registration.Provide Register Input Data

User clicks the register button
    Registration.Push "Continue" Button

User should be logged in
    Registration.Check if registration succesful

Log Out button should be visible
    Registration.Log Out

Sign In button is displayed
    LoginRegistration.Check if Sign In button displayed

User enters their Username and Password
    LoginRegistration.Input "Login"
    LoginRegistration.Input "Password"

User click Sing In button
    LoginRegistration.Log In Button Click

User is authenticated
    LoginRegistration.User Logged In
    LoginRegistration.User Authenticated

User is on the account page
    LoginRegistration."My Account" page veryfication

User enter incorrect "Login" or "Password"
    [Arguments]    ${Login}     ${Password}
    LoginRegistration.Template User enter incorrect "Login" or "Password"   ${Login}     ${Password}

User should see correct "Error Message"
    [Arguments]                 ${error_message}
    LoginRegistration.Template User should see correct "Error Message"  ${error_message}

Failed Login Attempts Should Dispplay Correct Errors
    [Arguments]    ${Login}     ${Password}     ${Error_Message}
    Given User is on Login Page
    When User enter incorrect "Login" or "Password"    ${Login}     ${Password}
    And User click Sing In button
    Then User should see correct "Error Message"       ${Error_Message}