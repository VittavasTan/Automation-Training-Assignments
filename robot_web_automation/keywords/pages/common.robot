*** Settings ***
Resource    ./import.robot

*** Keywords ***
Open Doppio Browser
    Open Browser                                    ${url}        browser=gc

Click User Icon
    Wait Until Page Does Not Contain Element        ${common_locator.btn_ok}
    Click Element                                   ${common_locator.icon_user}

Click Cart Icon
    Wait Until Page Does Not Contain Element        ${common_locator.btn_ok}
    Click Element                                   ${common_locator.icon_cart}
    Wait Until Page Contains Element                xpath=//div[@class='product-detail-item' and text()='${search_product.product_name}']

Click OK Button
    Wait Until Page Contains Element                ${common_locator.btn_ok}
    Click Element                                   ${common_locator.btn_ok}
    Wait Until Page Does Not Contain Element        ${common_locator.btn_ok}