*** Settings ***
Documentation           Test cases for Search Results Page
Resource                ../Resources/EcommerceApp.robot
Resource                ../resources/common.robot
Resource                ../resources/DataManager.robot
Resource                ../data/Variables.robot
Suite Setup
Test Setup              Common.Begin Web Test
Test Teardown           Common.End Web Test
Suite Teardown
# robot -d results tests/002_Search.robot

*** Test Cases ***

Basic Search
    [Documentation]     Performs basic search to check search functionality
    [Tags]              S_1004  TC_1009
    Given User is on the homepage of the e-commerce site
    When User enter "phrase" into the search bar                         ${SEARCH_VALUE}
    And User clicks search button
    Then User should see relevant search results for "phrase"              ${SEARCH_VALUE}

Perform an Empty Search
    [Documentation]     Performs search without arguments
    [Tags]              S_1005  TC_1010
    Given User is on the homepage of the e-commerce site
    When User submit an empty search query
    Then User should see a message indicating that no search results were found

Search with Multiple Keywords
    [Documentation]     Performs basic search with multiple arguments to check if possible
    [Tags]              S_1006  TC_1011
    Given User is on the homepage of the e-commerce site
    When User enter "phrase" into the search bar                        ${MULTIPLE_KEYWORDS_VALUE}
    And User clicks search button
    Then User should see relevant search results for "phrase"           ${MULTIPLE_KEYWORDS_VALUE}