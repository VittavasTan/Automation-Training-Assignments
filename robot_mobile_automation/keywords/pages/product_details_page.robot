*** Settings ***
Resource                    ../import.robot

*** Keywords ***
Click Add To Cart Button
    AppiumLibrary.Wait Until Page Contains Element            ${product_details_locator.btn_add_cart}
    AppiumLibrary.Click Element                               ${product_details_locator.btn_add_cart}