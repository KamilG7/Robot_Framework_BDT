*** Settings ***
Documentation                   PO for Main Site (Landing Page)
Library                         SeleniumLibrary
Resource                        ../../data/Variables.robot

*** Keywords ***
Navigate To
    go to                                   ${URL_HOME_PAGE}

Verify Page Loaded
    wait until page contains element        ${LANDING_CONFIRMATION_LOCATOR}