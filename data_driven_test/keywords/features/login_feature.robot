*** Settings ***
Resource                ../import.robot

*** Keywords ***
Login
    [Arguments]                ${username}                   ${password}
    SeleniumLibrary.Wait Until Page Contains Element         ${login_locator.btn_login}
    login_page.Input Login Username                          ${username}
    login_page.Input Login Password                          ${password}
    login_page.Click Login Button

Compare Login Status to Expected message
    [Arguments]                    ${expected_message}
    SeleniumLibrary.Wait Until Page Contains Element        ${common_locator.btn_ok}
    ${message}                                              login_page.Get Login Status
    Should Be Equal                ${message}               ${expected_message}