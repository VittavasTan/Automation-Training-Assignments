*** Test Cases ***
TC-001 Age Verification
    ${age}    Set Variable    20
    Run Keyword If            ${age} > 18        Log        You are an adult              console=True  
    ...    ELSE IF            ${age} == 18       Log        You just became an adult      console=True
    ...    ELSE                                  Log        You are underage              console=True