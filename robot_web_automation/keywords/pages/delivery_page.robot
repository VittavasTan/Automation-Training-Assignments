*** Settings ***
Library    SeleniumLibrary

Resource    ../import.robot

*** Keywords ***
Input Delivery Name
    [Arguments]                                           ${name}
    SeleniumLibrary.Wait Until Page Contains Element      ${delivery_locator.box_name}
    SeleniumLibrary.Input Text                            ${delivery_locator.box_name}            ${name}

Input Delivery Surname
    [Arguments]                                           ${surname}
    SeleniumLibrary.Wait Until Page Contains Element      ${delivery_locator.box_surname}
    SeleniumLibrary.Input Text                            ${delivery_locator.box_surname}         ${surname}

Input Delivery Address
    [Arguments]                                           ${address}
    SeleniumLibrary.Wait Until Page Contains Element      ${delivery_locator.box_address}
    SeleniumLibrary.Input Text                            ${delivery_locator.box_address}         ${address}

Input Delivery Phone Number
    [Arguments]                                           ${phone}
    SeleniumLibrary.Wait Until Page Contains Element      ${delivery_locator.box_phone}
    SeleniumLibrary.Input Text                            ${delivery_locator.box_phone}           ${phone}

Click Pay Button
    SeleniumLibrary.Click Element                         ${delivery_locator.btn_pay}