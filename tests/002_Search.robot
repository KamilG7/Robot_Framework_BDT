*** Settings ***
Documentation           Test cases for "Login" page
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