*** Settings ***
Resource            ../import.robot

*** Keywords ***
Compare Cart Details To Ordered Product Details
    ${order_amount}            Get Order Amount Text
    ${order_product_name}      Get Order Name Text
    Should Be Equal            ${order_product_name}           ${product_details.product_name}  
    Should Be Equal            ${${order_amount}}                 ${product_details.product_amount}