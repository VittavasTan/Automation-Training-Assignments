*** Settings ***
Resource            import.robot

*** Keywords ***
Open Doppio browser
    SeleniumLibrary.Open browser                                    ${url}        browser=gc

Click user icon
    SeleniumLibrary.Wait until page contains element                ${common_locator.icon_user}
    SeleniumLibrary.Click element                                   ${common_locator.icon_user}

Click OK button
    SeleniumLibrary.Wait until page contains element                ${common_locator.btn_ok}
    SeleniumLibrary.Wait until element is visible                   ${login_locator.text_login_status}
    SeleniumLibrary.Click element                                   ${common_locator.btn_ok}
    SeleniumLibrary.Wait until page does not contain element        ${common_locator.btn_ok}