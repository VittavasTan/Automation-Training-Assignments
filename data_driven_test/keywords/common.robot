*** Settings ***
Resource            import.robot

*** Keywords ***
Open Doppio Browser
    SeleniumLibrary.Open Browser                                    ${url}        browser=gc

Click User Icon
    SeleniumLibrary.Wait Until Page Contains Element                ${common_locator.icon_user}
    SeleniumLibrary.Click Element                                   ${common_locator.icon_user}

Click OK Button
    SeleniumLibrary.Wait Until Page Contains Element                ${common_locator.btn_ok}
    SeleniumLibrary.Wait Until Element Is Visible                   ${login_locator.text_login_status}
    SeleniumLibrary.Click Element                                   ${common_locator.btn_ok}
    SeleniumLibrary.Wait Until Page Does Not Contain Element        ${common_locator.btn_ok}