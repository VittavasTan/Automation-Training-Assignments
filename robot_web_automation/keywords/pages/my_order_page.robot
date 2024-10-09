*** Settings ***
Library    SeleniumLibrary

Resource    ../import.robot

*** Keywords ***
Click preparing tab
    SeleniumLibrary.Wait until page contains element          ${my_order_locator.tab_preparing}
    SeleniumLibrary.Click element                             ${my_order_locator.tab_preparing}

Get status of order if preparing
   SeleniumLibrary.Wait until page contains element          ${my_order.locator.status_preparing} 
    ${keyword_status}                        Run keyword and return status    
    ...                                      SeleniumLibrary.Page should contain element               ${my_order.locator.status_preparing}
   Return from keyword                       ${keyword_status}