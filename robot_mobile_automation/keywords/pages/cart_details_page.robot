*** Settings ***
Resource                    ../import.robot

*** Keywords ***
Get Order Amount Text
    Wait Until Page Contains Element           ${cart_details_locator.txt_order_amount}
    ${order_amount}            Get Text        ${cart_details_locator.txt_order_amount}
    Return From Keyword        ${order_amount}

Get Order Name Text
    Wait Until Page Contains Element           ${cart_details_locator.txt_order_name}
    ${order_name}              Get Text        ${cart_details_locator.txt_order_name}
    Return From Keyword        ${order_name}