*** Settings ***
Documentation               Layer needed to read data from external files
Library                     ../Ext_Lib/CSVReader.py
Library                     ../Ext_Lib/RandomCredentials.py

*** Keywords ***
Get CSV Data
    [Arguments]    ${FilePath}
    ${Data} =    read csv    ${FilePath}
    RETURN    ${Data}

Get Random Email
    ${Random_email} =    email randomizer
    RETURN    ${Random_email}

Get Random Login
    ${Random_login} =    login randomizer
    RETURN    ${Random_login}

Get Random Password
    ${Random_password} =    password randomizer
    RETURN    ${Random_password}