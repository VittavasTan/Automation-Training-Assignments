*** Settings ***
Resource                   ../keywords/import.robot

Suite Setup                common.Open Demo Application
Suite Teardown             AppiumLibrary.Close Application

*** Test cases ***
TC001 Verify Cart Contain Correct Order Name And Amount
    catalog_page.Click Product Image                                        ${product_details.product_name}     
    product_details_page.Click Add To Cart Button
    common.Click Cart Icon
    cart_details_feature.Compare Cart Details To Ordered Product Details    ${product_details.product_name}    ${product_details.product_amount}

    