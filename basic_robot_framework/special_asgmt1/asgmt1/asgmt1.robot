*** Keywords ***
Log if Eligible
    Log         Eligible for voting        console=True

Log if not Eligible
    Log         Not eligible for voting    console=True

Validate Age 
    [Arguments]                ${age}
    Run Keyword If             ${age} > 18        Log if Eligible     
    ...         ELSE           Log if not Eligible 

*** Test cases ***
TC-001 Test Keyword Validate Age when Age is 16
    Validate Age                16

TC-002 Test Keyword Validate Age when Age is 20
    Validate Age                20
