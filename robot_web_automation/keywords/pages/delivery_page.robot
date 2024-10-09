*** Settings ***
Library    SeleniumLibrary

Resource    ../import.robot

*** Keywords ***
Input delivery name
    [Arguments]                                           ${name}
    SeleniumLibrary.Wait until page contains element      ${delivery_locator.box_name}
    SeleniumLibrary.Input text                            ${delivery_locator.box_name}            ${name}

Input delivery surname
    [Arguments]                                           ${surname}
    SeleniumLibrary.Wait until page contains element      ${delivery_locator.box_surname}
    SeleniumLibrary.Input text                            ${delivery_locator.box_surname}         ${surname}

Input delivery address
    [Arguments]                                           ${address}
    SeleniumLibrary.Wait until page contains element      ${delivery_locator.box_address}
    SeleniumLibrary.Input text                            ${delivery_locator.box_address}         ${address}

Input delivery phone number
    [Arguments]                                           ${phone}
    SeleniumLibrary.Wait until page contains element      ${delivery_locator.box_phone}
    SeleniumLibrary.Input text                            ${delivery_locator.box_phone}           ${phone}

Click pay button
    SeleniumLibrary.Click element                         ${delivery_locator.btn_pay}