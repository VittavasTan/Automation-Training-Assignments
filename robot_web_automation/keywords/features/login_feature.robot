*** Settings ***
Library    SeleniumLibrary

Resource    ../import.robot

*** Keywords ***
Login
    [Arguments]                                 ${username}                      ${password}
    login_page.Input Login Username             ${username}
    login_page.Input Login Password             ${password}
    login_page.Click Login Button
    common.Click OK Button

Sign up
    [Arguments]                                 ${username}                      ${password}                ${confirm_password}
    login_page.Click Sign Up Button At Login
    login_page.Input Sign Up Username           ${username}
    login_page.Input Sign Up Password           ${password}
    login_page.Input Sign Up Confirm Password   ${confirm_password}
    login_page.Click Sign Up Button
    common.Click OK Button