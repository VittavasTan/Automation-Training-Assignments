*** Settings ***
Resource            ../import.robot

*** Keywords ***
Input Login Username
    [Arguments]                            ${username}
    SeleniumLibrary.Input Text             ${login_locator.box_username}            ${username}

Input Login Password
    [Arguments]                            ${password}
    SeleniumLibrary.Input Text             ${login_locator.box_password}            ${password}

Click Login Button
    SeleniumLibrary.Click Element          ${login_locator.btn_login}

Get Login Status
    ${message}                             SeleniumLibrary.Get Text                 ${login_locator.text_login_status}
    Return From Keyword                    ${message}