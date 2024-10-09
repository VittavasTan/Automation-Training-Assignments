*** Settings ***
Resource                ../import.robot

*** Keywords ***
Click product image
    [Arguments]                                     ${product_name}
    ${catalog_locator.image_product}                String.Replace string              ${catalog_locator.image_product}         {{product_name}}        ${product_name}
    AppiumLibrary.Wait until page contains element                                     ${catalog_locator.image_product}
    AppiumLibrary.Click element                                                        ${catalog_locator.image_product}       
