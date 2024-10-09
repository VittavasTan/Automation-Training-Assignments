*** Settings ***
Library    SeleniumLibrary

Resource    ../import.robot

*** Keywords ****
Search product
    [Arguments]                                           ${product_type}
    home_page.Input product to search box                 ${product_type}
    home_page.Click search button

Select product
    [Arguments]                                           ${product_name}
    search_result_page.Click product to select            ${search_product.product_name}
    search_result_page.Click add cart button
    common.Click OK button