*** Settings ***
Library    SeleniumLibrary

Resource    ../import.robot

*** Keywords ***
Verify if order is already preparing
    common.Click user icon
    my_order_page.Click preparing tab
    ${preparing_status}            my_order_page.Get status of order if preparing
    Should be equal                ${preparing_status}                    ${True}