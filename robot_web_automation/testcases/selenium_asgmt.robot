*** Settings ***
Resource                          ../keywords/pages/import.robot

Test Setup                         Open Doppio Browser
Test Teardown                      Close Browser

*** Test Cases ***
TC-001 Sign Up Account
    Click User Icon
    Sign up                        ${user_account.username}         ${user_account.password}        ${user_account.password}

TC-002 Test Purchase Product At Doppee Website
    Click User Icon
    Login                          ${user_account.username}         ${user_account.password}
    
    Search Product                 ${search_product.product_type}
    Select Product                 ${search_product.product_name}

    Click Cart Icon
    Input Delivery Name             ${delivery_details.name}
    Input Delivery Surname          ${delivery_details.surname}            
    Input Delivery Address          ${delivery_details.address}
    Input Delivery Phone Number     ${delivery_details.phone_number}
    Click Pay Button
    
    Select Credit Card Method   
    Input Credit Card Number        ${credit_card_details.card_number}
    Input Credit Card EXP           ${credit_card_details.exp}
    Input Credit Card CVC           ${credit_card_details.cvc}
    Input Credit Card Owner         ${credit_card_details.owner}
    Confirm Payment
    Verify If Order Is Already Preparing
    

