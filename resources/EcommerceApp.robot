*** Settings ***
Documentation           Script gruping pre-defined keywords into test steps
Resource                ./PO/Landing.robot
Resource                ./PO/LoginRegistration.robot
Resource                ./PO/Registration.robot
Resource                ./PO/SearchResults.robot
Resource                ./PO/Cart.robot

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
    LoginRegistration.Template User should see correct "Error Message"      ${error_message}

Failed Login Attempts Should Dispplay Correct Errors
    [Arguments]    ${Login}     ${Password}     ${Error_Message}
    Given User is on Login Page
    When User enter incorrect "Login" or "Password"                         ${Login}     ${Password}
    And User click Sing In button
    Then User should see correct "Error Message"                            ${Error_Message}

User is on the homepage of the e-commerce site
    Landing.Navigate To
    Landing.Verify Page Loaded

User enter "phrase" into the search bar
    [Arguments]    ${Search_text}
    Landing.Input Text Into Search Bar                                      ${Search_text}

User should see relevant search results for "phrase"
    [Arguments]    ${Search_text}
    SearchResults.Check if test results relevant                            ${Search_text}

User clicks search button
    Landing.Click Search Button

User submit an empty search query
    Landing.Click Search Button

User should see a message indicating that no search results were found
    SearchResults.No Results Message Veryfication

User is viewing a product
    [Arguments]    ${Search_text}
    Landing.Input Text Into Search Bar                                      ${Search_text}
    Landing.Click Search Button

User is logged in
    User is on Login Page
    Sign In button is displayed
    User enters their Username and Password
    User click Sing In button
    User is authenticated
    User is on the account page
    Landing.Navigate To

User click on the "Add to Cart" button
    SearchResults.Add To Cart

product should be added to Users cart
    Cart.Navigate To
    Cart.Verify Page Loaded
    Cart.Product In Cart

User added products to cart
    [Arguments]     ${SEARCH_VALUE}
    User is logged in
    User is viewing a product                                                ${SEARCH_VALUE}
    User click on the "Add to Cart" button
    product should be added to Users cart

User increase the quantity of a product to 2
    Cart.Change product quantity                                             ${CART_CHANGE_QUANTITY}
    Cart.Refresh button


the quantity of the product in Users cart should be updated to 2
    Cart.Check quantity                                                      ${CART_CHANGE_QUANTITY}


User have products in cart
    [Arguments]                                                              ${SEARCH_VALUE}
    User added products to cart                                              ${SEARCH_VALUE}

User click on the remove button next to a product
    Cart.Remove Button Click

the product should be removed from cart
    Cart.Check If Empty

