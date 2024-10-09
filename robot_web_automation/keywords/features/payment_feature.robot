*** Settings ***
Library    SeleniumLibrary

Resource    ../import.robot

*** Keywords ***
Select credit card method      
    payment_page.Click credit card method to select
    payment_page.Click next button

Confirm payment
    payment_page.Click confirm button
    common.Click OK button