*** Settings ***
Documentation                   PO for Search Results Page
Library                         SeleniumLibrary
Resource                        ../../data/Variables.robot

*** Keywords ***
Check if test results relevant
    [Arguments]    ${Search_text}
    @{products} =    Get Webelements    ${SEARCH_RESULTS_LOCATOR}

    FOR    ${product}    IN   @{products}
        element should contain          ${product}     ${Search_text}
        log                             ${product}
    END

No Results Message Veryfication
    element should contain              ${SEARCH_EMPTY_LOCATOR}     ${SEARCH_EMPTY_MESSAGE}

Add To Cart
    click element                       ${SEARCH_ADD_FIRST}