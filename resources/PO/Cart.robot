*** Settings ***
Documentation                   PO for Cart User Panel
Library                         SeleniumLibrary
Resource                        ../../data/Variables.robot

*** Keywords ***
Navigate To
    click element                                               ${CART_BUTTON}

Verify Page Loaded
    wait until page contains element                            ${CART_CONFIRMATION_LOCATOR}

Product In Cart
    element should be visible                                   ${CART_PRODUCT_LIST}

Change product quantity
    [Arguments]                                                 ${quantity}
    input text                                                  ${CART_PRODUCT_QUANTITY}    ${quantity}

Refresh button
    click element                                               ${CART_REFRESH_BUTTON}

Check quantity
    [Arguments]                                                 ${quantity}
    ${quantity_value}   get element attribute                   ${CART_PRODUCT_QUANTITY}      value
    should be equal as strings                                  ${quantity}         ${quantity_value}

Remove Button Click
    click element                                               ${CART_REMOVE_ITEM}

Check If Empty
    element should contain                                      ${CART_EMPTY_LOCATOR}           ${CART_EMPTY_TEXT}
