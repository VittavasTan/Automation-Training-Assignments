*** Settings ***
Library    SeleniumLibrary

Resource    ../import.robot

*** Keywords ***
Click Preparing Tab
    SeleniumLibrary.Wait Until Page Contains Element          ${my_order_locator.tab_preparing}
    SeleniumLibrary.Click Element                             ${my_order_locator.tab_preparing}

Get Status Of Order If Preparing
   SeleniumLibrary.Wait Until Page Contains Element          ${my_order.locator.status_preparing} 
    ${keyword_status}                        Run Keyword And Return Status    
    ...                                      SeleniumLibrary.Page Should Contain Element               ${my_order.locator.status_preparing}
   Return From Keyword                       ${keyword_status}