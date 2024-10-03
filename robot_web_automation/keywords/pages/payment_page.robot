*** Settings ***
Library    SeleniumLibrary

Resource    ../import.robot

*** Keywords ***
Click Credit Card Method To Select
    SeleniumLibrary.Click Element        ${payment_locator.btn_select_credit_card}

Click Next Button
   SeleniumLibrary. Click Element        ${payment_locator.btn_next}

Input Credit Card Number
    [Arguments]                          ${credit_card_number}
    SeleniumLibrary.Input Text           ${payment_locator.box_card_number}        ${credit_card_number}

Input Credit Card EXP
    [Arguments]                          ${exp}
    SeleniumLibrary.Input Text           ${payment_locator.box_card_exp}           ${exp}

Input Credit Card CVC
    [Arguments]                          ${cvc}
    SeleniumLibrary.Input Text           ${payment_locator.box_card_cvc}           ${cvc}

Input Credit Card Owner
    [Arguments]                          ${owner}
    SeleniumLibrary.Input Text           ${payment_locator.box_card_owner}         ${owner}

Click Confirm Button
    SeleniumLibrary.Wait Until Page Contains Element        ${payment_locator.btn_confirm}
    SeleniumLibrary.Click Element                           ${payment_locator.btn_confirm}