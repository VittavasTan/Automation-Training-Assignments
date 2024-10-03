*** Settings ***
Library    SeleniumLibrary

Resource    ../import.robot

*** Keywords ***
Verify If Order Is Already Preparing
    common.Click User Icon
    my_order_page.Click Preparing Tab
    ${preparing_status}            my_order_page.Get Status Of Order If Preparing
    Should Be Equal                ${preparing_status}                    ${True}