*** Settings ***
Resource                ../import.robot

*** Keywords ***
Login
    [Arguments]                ${username}                   ${password}
    SeleniumLibrary.Wait until page contains element         ${login_locator.btn_login}
    login_page.Input login username                          ${username}
    login_page.Input login password                          ${password}
    login_page.Click login button

Compare login status to expected message
    [Arguments]                    ${expected_message}
    SeleniumLibrary.Wait until page contains element        ${common_locator.btn_ok}
    ${message}                                              login_page.Get login status
    Should be equal                ${message}               ${expected_message}