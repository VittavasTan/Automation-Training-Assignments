*** Settings ***
Resource                   ../keywords/import.robot

Suite Setup                common.Open demo application
Suite Teardown             AppiumLibrary.Close application

*** Test cases ***
TC001 Verify cart contain correct order name and amount
    catalog_page.Click product image                                        ${product_details.product_name}     
    product_details_page.Click add to cart button
    common.Click cart icon
    cart_details_feature.Compare cart details to ordered product details    ${product_details.product_name}    ${product_details.product_amount}

    