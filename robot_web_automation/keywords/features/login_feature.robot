*** Settings ***
Library    SeleniumLibrary

Resource    ../pages/import.robot

*** Keywords ***
Login
    [Arguments]                     ${username}                      ${password}
    Input Login Username             ${username}
    Input Login Password             ${password}
    Click Login Button
    Click OK Button

Sign up
    [Arguments]                     ${username}                      ${password}                ${confirm_password}
    Click Sign Up Button At Login
    Input Sign Up Username           ${username}
    Input Sign Up Password           ${password}
    Input Sign Up Confirm Password   ${confirm_password}
    Click Sign Up Button
    Click OK Button