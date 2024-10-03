*** Settings ***
Resource                          ../keywords/import.robot

Test Setup                         common.Open Doppio Browser
Test Teardown                      SeleniumLibrary.Close Browser

*** Test Cases ***
TC-001 Sign Up Account
    common.Click User Icon
    login_feature.Sign up                         ${user_account.username}         ${user_account.password}        ${user_account.password}

TC-002 Test Purchase Product At Doppee Website
    common.Click User Icon
    login_feature.Login                           ${user_account.username}         ${user_account.password}
    
    search_feature.Search Product                 ${search_product.product_type}
    search_feature.Select Product                 ${search_product.product_name}

    common.Click Cart Icon
    delivery_page.Input Delivery Name             ${delivery_details.name}
    delivery_page.Input Delivery Surname          ${delivery_details.surname}            
    delivery_page.Input Delivery Address          ${delivery_details.address}
    delivery_page.Input Delivery Phone Number     ${delivery_details.phone_number}
    delivery_page.Click Pay Button
    
    payment_feature.Select Credit Card Method   
    payment_page.Input Credit Card Number         ${credit_card_details.card_number}
    payment_page.Input Credit Card EXP            ${credit_card_details.exp}
    payment_page.Input Credit Card CVC            ${credit_card_details.cvc}
    payment_page.Input Credit Card Owner          ${credit_card_details.owner}
    payment_feature.Confirm Payment
    my_order_feature.Verify If Order Is Already Preparing
    

