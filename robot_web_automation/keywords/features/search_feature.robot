*** Settings ***
Library    SeleniumLibrary

Resource    ../pages/import.robot

*** Keywords ****
Search Product
    [Arguments]                        ${product_type}
    Input Product To Search Box        ${product_type}
    Click Search Button

Select Product
    [Arguments]                        ${product_name}
    Click Product To Select            ${search_product.product_name}
    Click Add Cart Button
    Click OK Button