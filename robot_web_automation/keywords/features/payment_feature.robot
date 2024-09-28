*** Settings ***
Library    SeleniumLibrary

Resource    ../pages/import.robot

*** Keywords ***
Select Credit Card Method      
    Click Credit Card Method To Select
    Click Next Button

Confirm Payment
    Click Confirm Button
    Click OK Button