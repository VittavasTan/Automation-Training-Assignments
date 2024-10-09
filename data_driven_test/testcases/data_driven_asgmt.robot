*** Settings ***
Resource            ../keywords/import.robot

Test Setup          common.Open Doppio browser
Test Teardown       SeleniumLibrary.Close browser

Test Template       Test login

*** Keywords ***
Test login
    [Arguments]        ${username}        ${password}        ${expected_message}
    
    common.Click user icon
    login_feature.Login    ${username}    ${password}
    login_feature.Compare login status to expected message    ${expected_message}
    common.Click OK button


*** Test Cases ***
Test login using data driver
    