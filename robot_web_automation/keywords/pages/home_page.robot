*** Settings ***
Library    SeleniumLibrary

Resource    ./import.robot

*** Keywords ***
Input Product To Search Box
    [Arguments]         ${product_name}
    Input Text          ${home_locator.box_search}        ${product_name}

Click Search Button
    Click Element        ${home_locator.btn_search}