*** Settings ***
Library    SeleniumLibrary

Resource    ../import.robot

*** Keywords ***
Click sign up button at login
    SeleniumLibrary.Click element          ${login_locator.btn_signup}

Input sign up username
    [Arguments]                            ${username}
    SeleniumLibrary.Input text             ${signup_locator.box_username}            ${username}

Input sign up password
    [Arguments]                            ${password}
    SeleniumLibrary.Input text             ${signup_locator.box_password}            ${password}

Input sign up confirm password
    [Arguments]                            ${confirm_password}
    SeleniumLibrary.Input text             ${signup_locator.box_confirm_password}    ${confirm_password}

Click sign up button
    SeleniumLibrary.Click element          ${signup_locator.btn_signup}

Input login username
    [Arguments]                            ${username}
    SeleniumLibrary.Input text             ${login_locator.box_username}            ${username}

Input login password
    [Arguments]                            ${password}
    SeleniumLibrary.Input text             ${login_locator.box_password}            ${password}

Click login button
    SeleniumLibrary.Click element          ${login_locator.btn_login}
