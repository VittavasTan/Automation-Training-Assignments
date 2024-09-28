*** Settings ***
Library    SeleniumLibrary

Resource    ./import.robot

*** Keywords ***
Input Delivery Name
    [Arguments]                           ${name}
    Wait Until Page Contains Element      ${delivery_locator.box_name}
    Input Text                            ${delivery_locator.box_name}            ${name}

Input Delivery Surname
    [Arguments]                           ${surname}
    Wait Until Page Contains Element      ${delivery_locator.box_surname}
    Input Text                            ${delivery_locator.box_surname}         ${surname}

Input Delivery Address
    [Arguments]                           ${address}
    Wait Until Page Contains Element      ${delivery_locator.box_address}
    Input Text                            ${delivery_locator.box_address}         ${address}

Input Delivery Phone Number
    [Arguments]                           ${phone}
    Wait Until Page Contains Element      ${delivery_locator.box_phone}
    Input Text                            ${delivery_locator.box_phone}           ${phone}

Click Pay Button
    Click Element                         ${delivery_locator.btn_pay}