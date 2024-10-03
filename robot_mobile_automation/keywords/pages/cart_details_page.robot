*** Settings ***
Resource                    ../import.robot

*** Keywords ***
Get Order Amount Text
    [Arguments]                                    ${product_name}            ${product_amount}
    ${cart_details_locator.txt_order_amount}       String.Replace String      ${cart_details_locator.txt_order_amount}    {{product_name}}        ${product_name}
    ${str_product_amount}                          Convert To String          ${product_amount}
    ${cart_details_locator.txt_order_amount}       String.Replace String      ${cart_details_locator.txt_order_amount}    {{product_amount}}      ${str_product_amount}
    AppiumLibrary.Wait Until Page Contains Element                            ${cart_details_locator.txt_order_amount}
    ${order_amount}                                AppiumLibrary.Get Text     ${cart_details_locator.txt_order_amount}
    Return From Keyword                            ${order_amount}