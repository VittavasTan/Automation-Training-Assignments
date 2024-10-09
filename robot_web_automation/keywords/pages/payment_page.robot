*** Settings ***
Library    SeleniumLibrary

Resource    ../import.robot

*** Keywords ***
Click credit card method to select
    SeleniumLibrary.Click element        ${payment_locator.btn_select_credit_card}

Click next button
   SeleniumLibrary. Click element        ${payment_locator.btn_next}

Input credit card number
    [Arguments]                          ${credit_card_number}
    SeleniumLibrary.Input text           ${payment_locator.box_card_number}        ${credit_card_number}

Input credit card exp
    [Arguments]                          ${exp}
    SeleniumLibrary.Input text           ${payment_locator.box_card_exp}           ${exp}

Input credit card cvc
    [Arguments]                          ${cvc}
    SeleniumLibrary.Input text           ${payment_locator.box_card_cvc}           ${cvc}

Input credit card owner
    [Arguments]                          ${owner}
    SeleniumLibrary.Input text           ${payment_locator.box_card_owner}         ${owner}

Click confirm button
    SeleniumLibrary.Wait until page contains element        ${payment_locator.btn_confirm}
    SeleniumLibrary.Click element                           ${payment_locator.btn_confirm}