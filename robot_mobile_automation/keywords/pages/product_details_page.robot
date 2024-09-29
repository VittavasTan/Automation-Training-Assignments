*** Settings ***
Resource                    ../import.robot

*** Keywords ***
Click Add To Cart Button
    Wait Until Page Contains Element            ${product_details_locator.btn_add_cart}
    Click Element                               ${product_details_locator.btn_add_cart}