*** Settings ***
Library    SeleniumLibrary

Resource    ../import.robot

*** Keywords ***
Select Credit Card Method      
    payment_page.Click Credit Card Method To Select
    payment_page.Click Next Button

Confirm Payment
    payment_page.Click Confirm Button
    common.Click OK Button