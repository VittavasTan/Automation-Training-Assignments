*** Settings ***
Library    SeleniumLibrary

Resource    ./import.robot

*** Keywords ***
Click Credit Card Method To Select
    Click Element        ${payment_locator.btn_select_credit_card}

Click Next Button
    Click Element        ${payment_locator.btn_next}

Input Credit Card Number
    [Arguments]          ${credit_card_number}
    Input Text           ${payment_locator.box_card_number}        ${credit_card_number}

Input Credit Card EXP
    [Arguments]          ${exp}
    Input Text           ${payment_locator.box_card_exp}           ${exp}

Input Credit Card CVC
    [Arguments]          ${cvc}
    Input Text           ${payment_locator.box_card_cvc}           ${cvc}

Input Credit Card Owner
    [Arguments]          ${owner}
    Input Text           ${payment_locator.box_card_owner}         ${owner}

Click Confirm Button
    Wait Until Page Contains Element        ${payment_locator.btn_confirm}
    Click Element                           ${payment_locator.btn_confirm}