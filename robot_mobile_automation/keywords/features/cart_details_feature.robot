*** Settings ***
Resource            ../import.robot

*** Keywords ***
Compare cart details to ordered product details
    [Arguments]                ${product_name}                                      ${product_amount}
    ${order_amount}            cart_details_page.Get order amount text              ${product_name}           ${product_amount}
    Should be equal            ${${order_amount}}                                   ${${product_amount}}