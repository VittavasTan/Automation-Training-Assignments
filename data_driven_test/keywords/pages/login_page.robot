*** Settings ***
Resource            ../import.robot

*** Keywords ***
Input login username
    [Arguments]                            ${username}
    SeleniumLibrary.Input text             ${login_locator.box_username}            ${username}

Input login password
    [Arguments]                            ${password}
    SeleniumLibrary.Input text             ${login_locator.box_password}            ${password}

Click login button
    SeleniumLibrary.Click element          ${login_locator.btn_login}

Get login status
    ${message}                             SeleniumLibrary.Get text                 ${login_locator.text_login_status}
    Return from keyword                    ${message}