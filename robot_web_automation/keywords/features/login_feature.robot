*** Settings ***
Library    SeleniumLibrary

Resource    ../import.robot

*** Keywords ***
Login
    [Arguments]                                 ${username}                      ${password}
    login_page.Input login username             ${username}
    login_page.Input login password             ${password}
    login_page.Click login button
    common.Click OK button

Sign up
    [Arguments]                                 ${username}                      ${password}                ${confirm_password}
    login_page.Click sign up button at login
    login_page.Input sign up username           ${username}
    login_page.Input sign up password           ${password}
    login_page.Input sign up confirm password   ${confirm_password}
    login_page.Click sign up button
    common.Click OK button