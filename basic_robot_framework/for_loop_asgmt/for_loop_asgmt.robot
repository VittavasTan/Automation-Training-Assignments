*** Settings ***
Variables        variables.yaml

*** Test Cases ***
TC-001 Print Even Heroes
    ${i}    Set Variable    0
    FOR    ${hero}    IN    @{heroes}
        ${mod_remainder}     Evaluate    ${i} % 2
        IF    ${mod_remainder} == 0    
        ...    Log    ${hero}    console=True
        ${i}    Set Variable    ${${i} + 1}
        Exit For Loop If    "${hero}" == "black widow"
    END