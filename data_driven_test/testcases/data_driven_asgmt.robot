*** Settings ***
Resource            ../keywords/import.robot

Test Setup          common.Open Doppio Browser
Test Teardown       SeleniumLibrary.Close Browser

Test Template       Test Login

*** Keywords ***
Test Login
    [Arguments]        ${username}        ${password}        ${expected_message}
    
    common.Click User Icon
    login_feature.Login    ${username}    ${password}
    login_feature.Compare Login Status to Expected message    ${expected_message}
    common.Click OK Button


*** Test Cases ***
Test Login Using Data Driver
    