*** Keywords ***
Greet User
    [Arguments]    ${name}=Guest
    Log            "Hello, ${name}"        console=True

*** Test Cases ***
TC-001 Test Keyword Greet User using Default
    Greet User    

TC-002 Test Keyword Greet User using Argument 'John' as Name
    Greet User    John

