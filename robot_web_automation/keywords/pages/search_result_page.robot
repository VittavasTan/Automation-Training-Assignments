*** Settings ***
Library    SeleniumLibrary

Resource    ../import.robot

*** Keywords ***
Click product to select
    [Arguments]                                    ${product_name}
    ${search_result_locator.item_product}          String.Replace string         ${search_result_locator.item_product}    
    ...                                            product_name                  ${product_name}
    SeleniumLibrary.Wait until page contains element               ${search_result_locator.item_product}  
    SeleniumLibrary.Click element                                  ${search_result_locator.item_product} 

Click add cart button
    SeleniumLibrary.Wait until page contains element               ${search_result_locator.btn_add_cart} 
    SeleniumLibrary.Click element                                  ${search_result_locator.btn_add_cart} 
    Sleep                                                          1