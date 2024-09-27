*** Keywords ***
Set Local Name
    [Arguments]              ${local_name}
    Set Local Variable       ${name}                                  ${local_name}
    Log                      Local Name is set as ${name}             console=True

*** Test Cases ***
TC-001 Test Set Global and Local Variable
    Set Global Variable      ${name}                                  Jack
    Log                      Global Name is set as ${name}            console=True
    Set Local Name           John