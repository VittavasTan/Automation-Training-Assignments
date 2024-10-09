*** Settings ***
Resource    import.robot

*** Keywords ***
Open Doppio browser
    SeleniumLibrary.Open browser                                    ${url}        browser=gc

Click user icon
    SeleniumLibrary.Wait until page does not contain element        ${common_locator.btn_ok}
    SeleniumLibrary.Click element                                   ${common_locator.icon_user}

Click cart icon
    SeleniumLibrary.Wait until page does not contain element        ${common_locator.btn_ok}
    SeleniumLibrary.Click element                                   ${common_locator.icon_cart}
    SeleniumLibrary.Wait until page contains element                ${delivery_locator.text_order_details}

Click OK button
    SeleniumLibrary.Wait until page contains element                ${common_locator.btn_ok}
    SeleniumLibrary.Click element                                   ${common_locator.btn_ok}
    SeleniumLibrary.Wait until page does not contain element        ${common_locator.btn_ok}