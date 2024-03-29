*** Settings ***
Library                 SeleniumLibrary
Documentation           Variables container
Resource                ../resources/DataManager.robot



*** Variables ***


#Browser
${BROWSER} =          chrome

#Landing
${URL_HOME_PAGE} =                    https://automationteststore.com/
${LANDING_CONFIRMATION_LOCATOR} =     xpath=//span[contains(text(), 'Featured')]
${SEARCH_VALUE} =                     CREAM
${SEARCH_BAR_LOCATOR} =               xpath=//input[@name='filter_keyword']
${SEARCH_BUTTON_LOCATOR} =            xpath=//div[@class='button-in-search']

#Login Registration
${LOGIN_REGISTRATION_LINK} =                     xpath=//a[contains(text(), 'Login or register')]
${LOGIN_REGISTRATION_CONFIRMATION_LOCATOR} =     xpath=//span[contains(text(), 'Account Login')]\
${LOGIN_BUTTON_LOCATOR} =                        xpath=//button[@title='Login']
${LOGIN_LOGIN_LOCATOR} =                         xpath=//input[@name='loginname']
${LOGIN_PASSWORD_LOCATOR} =                      xpath=//input[@name='password']
${LOGIN_AUTHENTICATION_LOCATOR} =                xpath=//h1[@class='heading1']/span[@class='subtext']
${LOGIN_MY_ACCOUNT_LOCATOR} =                    xpath=//h1[@class='heading1']
${LOGIN_ERROR_LOCATOR} =                         xpath=//div[@class='alert alert-error alert-danger']

#Login Template
${INCORRECT_LOGIN} =            Bozydar
${INCORRECT_PASSWORD} =         Bozydar
${LOGIN_ERROR_INCORRECT} =      Error: Incorrect login or password provided.
${LOGIN_ERROR_EMPTY} =          Error: Incorrect login or password provided.
${EMPTY} =


#Registration
${REGISTRATION_LINK} =                   xpath=//button[@title='Continue']
${REGISTRATION_CONFIRMATION_LOCATOR} =   xpath=//span[contains(text(), 'Create Account')]
${REGISTRATION_NAME_LOCATOR} =           xpath=//input[@id='AccountFrm_firstname']
${REGISTRATION_LAST_NAME_LOCATOR} =      xpath=//input[@id='AccountFrm_lastname']
${REGISTRATION_EMAIL_LOCATOR} =          xpath=//input[@id='AccountFrm_email']
${RGISTRATION_ADDRESS_LOCATOR} =         xpath=//input[@id='AccountFrm_address_1']
${REGISTRATION_CITY_LOCATOR} =           xpath=//input[@id='AccountFrm_city']
${REGISTRATION_REGION_LOCATOR} =         xpath=//select[@id='AccountFrm_zone_id']
${REGISTRATION_ZIPCODE_LOCATOR} =        xpath=//input[@id='AccountFrm_postcode']
${REGISTRATION_COUNTRY_LOCATOR} =        xpath=//select[@id='AccountFrm_country_id']
${REGISTRATION_LOGIN_LOCATOR} =          xpath=//input[@id='AccountFrm_loginname']
${REGISTRATION_PASSWORD_LOCATOR} =       xpath=//input[@id='AccountFrm_password']
${REGISTRATION_PASSWORD_LOCATOR2} =      xpath=//input[@id='AccountFrm_confirm']
${SUBSCRIPTION_CHECKBOX_LOCATOR} =       xpath=//input[@id='AccountFrm_newsletter0']
${PRIVACY_POLICY_LOCATOR} =              xpath=//input[@id='AccountFrm_agree']
${REGISTRATION_BUTTON_LOCATOR} =         xpath=//button[@title='Continue']
${REGISTRATION_SUCCESS_LOCATOR} =        xpath=//span[@class='maintext']
${USER_DROPDOWN} =                       xpath=//div[@class='menu_text']
${LOG_OUT_BUTTON} =                      xpath=//a[contains(text(), 'Logoff')]

${REGISTRATION_FIRST_NAME} =             Kamil
${REGISTRATION_LAST_NAME} =              Kowalski
${REGISTRATION_ADDRESS} =                Huba 70
${REGISTRATION_CITY} =                   Wrcolaw
${REGISTRATION_REGION} =                 2631
${REGISTRATION_ZIPCODE} =                42200
${REGISTRATION_COUNTRY} =                170
${REGISTRATION_MESSAGE} =                YOUR ACCOUNT HAS BEEN CREATED!

#SEARCH RESULTS
${SEARCH_RESULTS_LOCATOR} =         xpath=//a[@class='prdocutname'][contains(@title, ' ')]
${SEARCH_EMPTY_LOCATOR} =           xpath=//div[contains(text(), 'no product')]
${SEARCH_EMPTY_MESSAGE} =           There is no product that matches the search criteria
${MULTIPLE_KEYWORDS_VALUE} =        CK ONE
${SEARCH_ADD_FIRST} =               xpath=(//a[@class='productcart'])[1]

#CART
${CART_BUTTON} =                    xpath=(//a[@class='dropdown-toggle'])[2]
${CART_CONFIRMATION_LOCATOR} =      xpath=//span[@class='maintext']/i[@class='fa fa-shopping-cart fa-fw']
${CART_PRODUCT_LIST} =              xpath=//i[@class='fa fa-trash-o fa-fw']
${CART_PRODUCT_QUANTITY} =          xpath=//table[@class='table table-striped table-bordered']//input
${CART_REFRESH_BUTTON} =            xpath=//button[@id='cart_update']
${CART_CHANGE_QUANTITY} =           2
${CART_REMOVE_ITEM} =               xpath=//a/i[@class='fa fa-trash-o fa-fw']
${CART_EMPTY_LOCATOR} =             xpath=//div[@class='contentpanel']
${CART_EMPTY_TEXT} =                Your shopping cart is empty!





