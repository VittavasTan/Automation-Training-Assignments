*** Settings ***
Library    SeleniumLibrary

Resource    ../pages/import.robot

*** Keywords ***
Verify If Order Is Already Preparing
    Click User Icon
    Click Preparing Tab
    ${preparing_status}            Get Status Of Order If Preparing
    Should Be Equal                ${preparing_status}                    ${True}