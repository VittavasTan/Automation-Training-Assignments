*** Settings ***
Library    SeleniumLibrary

Resource    ../import.robot

*** Keywords ***
Input product to search box
    [Arguments]                         ${product_name}
    SeleniumLibrary.Input text          ${home_locator.box_search}        ${product_name}

Click search button
    SeleniumLibrary.Click element        ${home_locator.btn_search}