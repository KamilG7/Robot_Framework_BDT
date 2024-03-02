*** Settings ***
Documentation                   PO for Main Site (Landing Page)
Library                         SeleniumLibrary
Resource                        ../../data/Variables.robot

*** Keywords ***
Navigate To
    go to                                       ${URL_HOME_PAGE}

Verify Page Loaded
    wait until page contains element            ${LANDING_CONFIRMATION_LOCATOR}

Input Text Into Search Bar
    [Arguments]                                 ${Search_text}
    input text                                  ${SEARCH_BAR_LOCATOR}        ${Search_text}

Click Search Button
    click element                               ${SEARCH_BUTTON_LOCATOR}