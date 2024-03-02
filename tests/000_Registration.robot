*** Settings ***
Documentation           Test cases for Registration Form
Resource                ../Resources/EcommerceApp.robot
Resource                ../resources/common.robot
Resource                ../data/Variables.robot
Resource                ../resources/DataManager.robot
Suite Setup
Test Setup              Common.Begin Web Test
Test Teardown           Common.End Web Test
Suite Teardown
# robot -d results tests/000_Registration.robot

*** Test Cases ***
Registration With Valid Data
    [Documentation]     Registration should suceed with valid input
    [Tags]              S_1003   TC_1008    Registration

    Given User is on the registration page
    When User fills in the registration form with valid details
    And User clicks the register button
    Then User should be logged in
    And Log Out button should be visible