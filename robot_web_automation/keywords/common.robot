*** Settings ***
Resource    import.robot

*** Keywords ***
Open Doppio Browser
    SeleniumLibrary.Open Browser                                    ${url}        browser=gc

Click User Icon
    SeleniumLibrary.Wait Until Page Does Not Contain Element        ${common_locator.btn_ok}
    SeleniumLibrary.Click Element                                   ${common_locator.icon_user}

Click Cart Icon
    SeleniumLibrary.Wait Until Page Does Not Contain Element        ${common_locator.btn_ok}
    SeleniumLibrary.Click Element                                   ${common_locator.icon_cart}
    SeleniumLibrary.Wait Until Page Contains Element                ${delivery_locator.text_order_details}

Click OK Button
    SeleniumLibrary.Wait Until Page Contains Element                ${common_locator.btn_ok}
    SeleniumLibrary.Click Element                                   ${common_locator.btn_ok}
    SeleniumLibrary.Wait Until Page Does Not Contain Element        ${common_locator.btn_ok}