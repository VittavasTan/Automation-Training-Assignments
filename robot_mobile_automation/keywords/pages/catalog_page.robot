*** Settings ***
Resource                ../import.robot

*** Keywords ***
Click Product Image
    [Arguments]                                     ${product_name}
    ${catalog_locator.image_product}                String.Replace String              ${catalog_locator.image_product}         {{product_name}}        ${product_name}
    AppiumLibrary.Wait Until Page Contains Element                                     ${catalog_locator.image_product}
    AppiumLibrary.Click Element                                                        ${catalog_locator.image_product}       
