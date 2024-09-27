*** Test Cases ***
TC-001 Test with Tag 1
    [Tags]         smoke
    Log            This is a smoke test         console=True

TC-002 Test with Tag 2
    [Tags]         regression
    Log            This is a regression test    console=True 

TC-003 Test with Multiple Tags
    [Tags]         smoke    critical
    Log            This is a smoke and critical test    console=True 