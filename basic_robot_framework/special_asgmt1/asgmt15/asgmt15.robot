*** Settings ***
Library    SeleniumLibrary

*** Test Cases ***
TC-001 Error Handling Example
    Open Browser         https://practicetestautomation.com/practice-test-login/       browser=gc
    ${status}            Run Keyword And Return Status         Click Element           id=invalid_button
    Log                  Status: ${status}                     console=True
    Run Keyword And Ignore Error                               Input Text              id=invalid_test      value
    Log                  Ignored the error and continued       console=True