*** Settings ***
Resource                          ../keywords/import.robot

Test Setup                         common.Open Doppio browser
Test Teardown                      SeleniumLibrary.Close browser

*** Test Cases ***
TC-001 Sign up account
    common.Click user icon
    login_feature.Sign up                         ${user_account.username}         ${user_account.password}        ${user_account.password}

TC-002 Test purchase product at Doppee website
    common.Click user icon
    login_feature.Login                           ${user_account.username}         ${user_account.password}
    
    search_feature.Search product                 ${search_product.product_type}
    search_feature.Select product                 ${search_product.product_name}

    common.Click cart icon
    delivery_page.Input delivery name             ${delivery_details.name}
    delivery_page.Input delivery surname          ${delivery_details.surname}            
    delivery_page.Input delivery address          ${delivery_details.address}
    delivery_page.Input delivery phone number     ${delivery_details.phone_number}
    delivery_page.Click pay button
    
    payment_feature.Select credit card method   
    payment_page.Input credit card number         ${credit_card_details.card_number}
    payment_page.Input credit card exp            ${credit_card_details.exp}
    payment_page.Input credit card cvc            ${credit_card_details.cvc}
    payment_page.Input credit card owner          ${credit_card_details.owner}
    payment_feature.Confirm payment
    my_order_feature.Verify if order is already preparing
