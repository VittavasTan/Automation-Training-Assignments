*** Settings ***
Library    SeleniumLibrary

Test Setup     
...    Open Browser     http://google.com          chrome
Test Teardown    
...    Close Browser    

*** Test Cases ***
TC-001 Example Test with Setup and Teardown 
    Log                 Test is Running             console=True
    