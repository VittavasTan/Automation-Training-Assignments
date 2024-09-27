*** Settings ***
Suite Teardown    
...    Log        Suite Teardown is running                  console=True

*** Keywords ***
Keyword with Teardown
    [Teardown]    Log        Keyword Teardown is running     console=True
    Log           Running the test                           console=True

*** Test Cases ***
TC-001 With Teardown
    [Teardown]    Log       Test Case Teardown is running    console=True
    Log           Running the test                           console=True
    Keyword with Teardown
    
