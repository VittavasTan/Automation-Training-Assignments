*** Settings ***
Library    SeleniumLibrary

Resource    ../import.robot

*** Keywords ***
Click Sign Up Button At Login
    SeleniumLibrary.Click Element          ${login_locator.btn_signup}

Input Sign Up Username
    [Arguments]                            ${username}
    SeleniumLibrary.Input Text             ${signup_locator.box_username}            ${username}

Input Sign Up Password
    [Arguments]                            ${password}
    SeleniumLibrary.Input Text             ${signup_locator.box_password}            ${password}

Input Sign Up Confirm Password
    [Arguments]                            ${confirm_password}
    SeleniumLibrary.Input Text             ${signup_locator.box_confirm_password}    ${confirm_password}

Click Sign Up Button
    SeleniumLibrary.Click Element          ${signup_locator.btn_signup}

Input Login Username
    [Arguments]                            ${username}
    SeleniumLibrary.Input Text             ${login_locator.box_username}            ${username}

Input Login Password
    [Arguments]                            ${password}
    SeleniumLibrary.Input Text             ${login_locator.box_password}            ${password}

Click Login Button
    SeleniumLibrary.Click Element          ${login_locator.btn_login}
