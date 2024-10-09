*** Settings ***
Resource                    ../import.robot

*** Keywords ***
Get order amount text
    [Arguments]                                    ${product_name}            ${product_amount}
    ${cart_details_locator.txt_order_amount}       String.Replace string      ${cart_details_locator.txt_order_amount}    {{product_name}}        ${product_name}
    ${str_product_amount}                          Convert to string          ${product_amount}
    ${cart_details_locator.txt_order_amount}       String.Replace string      ${cart_details_locator.txt_order_amount}    {{product_amount}}      ${str_product_amount}
    AppiumLibrary.Wait until page contains element                            ${cart_details_locator.txt_order_amount}
    ${order_amount}                                AppiumLibrary.Get text     ${cart_details_locator.txt_order_amount}
    Return from keyword                            ${order_amount}