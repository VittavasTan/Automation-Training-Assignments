*** Settings ***
Resource                    ../import.robot

*** Keywords ***
Click add to cart button
    AppiumLibrary.Wait until page contains element            ${product_details_locator.btn_add_cart}
    AppiumLibrary.Click element                               ${product_details_locator.btn_add_cart}