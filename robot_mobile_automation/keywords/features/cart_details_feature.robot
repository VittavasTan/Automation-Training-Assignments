*** Settings ***
Resource            ../import.robot

*** Keywords ***
Compare Cart Details To Ordered Product Details
    [Arguments]                ${product_name}                                      ${product_amount}
    ${order_amount}            cart_details_page.Get Order Amount Text              ${product_name}           ${product_amount}
    Should Be Equal            ${${order_amount}}                                   ${${product_amount}}