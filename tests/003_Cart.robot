*** Settings ***
Documentation           Test cases for Cart Page
Resource                ../Resources/EcommerceApp.robot
Resource                ../resources/common.robot
Resource                ../resources/DataManager.robot
Resource                ../data/Variables.robot
Suite Setup
Test Setup              Common.Begin Web Test
Test Teardown           Common.End Web Test
Suite Teardown
# robot -d results tests/003_Cart.robot

*** Test Cases ***
Add Product to Cart
    [Documentation]     Check if adding item to cart possible
    [Tags]              S_1007      TC_1012
    Given User is logged in
    And User is viewing a product                   ${SEARCH_VALUE}
    When User click on the "Add to Cart" button
    Then product should be added to Users cart

Update Quantity of Product in Cart
    [Documentation]     Check if updating number of items in cart possible
    [Tags]              S_1008      TC_1013
    Given User added products to cart               ${SEARCH_VALUE}
    When User increase the quantity of a product to 2
    Then the quantity of the product in Users cart should be updated to 2

Remove Product from Cart
    [Documentation]     Check if removing items from cart possible
    [Tags]              S_1009      TC_1014
    Given User have products in cart                ${SEARCH_VALUE}
    When User click on the remove button next to a product
    Then the product should be removed from cart