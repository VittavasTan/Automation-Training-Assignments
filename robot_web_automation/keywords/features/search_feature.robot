*** Settings ***
Library    SeleniumLibrary

Resource    ../import.robot

*** Keywords ****
Search Product
    [Arguments]                                           ${product_type}
    home_page.Input Product To Search Box                 ${product_type}
    home_page.Click Search Button

Select Product
    [Arguments]                                           ${product_name}
    search_result_page.Click Product To Select            ${search_product.product_name}
    search_result_page.Click Add Cart Button
    common.Click OK Button