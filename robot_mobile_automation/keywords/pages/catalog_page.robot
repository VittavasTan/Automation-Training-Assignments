*** Settings ***
Resource                ../import.robot

*** Keywords ***
Click Product Image
    [Arguments]                                     ${product_name}
    ${catalog_locator.image_product}                Replace String        ${catalog_locator.image_product}        {{product_name}}        ${product_name}
    Wait Until Page Contains Element                ${catalog_locator.image_product}
    Click Element                                   ${catalog_locator.image_product}       
