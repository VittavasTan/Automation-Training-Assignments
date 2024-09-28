*** Settings ***
Library    SeleniumLibrary

Resource    ./import.robot

*** Keywords ***
Click Product To Select
    [Arguments]                                    ${product_name}
    ${search_result_locator.item_product}          Replace String         ${search_result_locator.item_product}    
    ...                                            product_name           ${product_name}
    Wait Until Page Contains Element               ${search_result_locator.item_product}  
    Click Element                                  ${search_result_locator.item_product} 

Click Add Cart Button
    Wait Until Page Contains Element               ${search_result_locator.btn_add_cart} 
    Click Element                                  ${search_result_locator.btn_add_cart} 
    Sleep                                          1