*** Settings ***
Library    SeleniumLibrary

Resource    ./import.robot

*** Keywords ***
Click Sign Up Button At Login
    Click Element          ${login_locator.btn_signup}

Input Sign Up Username
    [Arguments]            ${username}
    Input Text             ${signup_locator.box_username}            ${username}

Input Sign Up Password
    [Arguments]            ${password}
    Input Text             ${signup_locator.box_password}            ${password}

Input Sign Up Confirm Password
    [Arguments]            ${confirm_password}
    Input Text             ${signup_locator.box_confirm_password}    ${confirm_password}

Click Sign Up Button
    Click Element          ${signup_locator.btn_signup}

Input Login Username
    [Arguments]            ${username}
    Input Text             ${login_locator.box_username}            ${username}

Input Login Password
    [Arguments]            ${password}
    Input Text             ${login_locator.box_password}            ${password}

Click Login Button
    Click Element          ${login_locator.btn_login}
