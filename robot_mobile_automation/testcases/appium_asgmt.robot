*** Settings ***
Resource                   ../keywords/import.robot

Suite Setup                Open Demo Application
Suite Teardown             Close Application

*** Test cases ***
TC001 Verify Cart Contain Correct Order Name And Amount
    Click Product Image                                ${product_details.product_name}
    Click Add To Cart Button
    Click Cart Icon
    Compare Cart Details To Ordered Product Details

    