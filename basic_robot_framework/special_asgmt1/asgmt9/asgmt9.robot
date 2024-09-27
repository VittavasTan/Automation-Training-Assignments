*** Keywords ***
Calculate Square
    [Arguments]             ${number}
    ${result}               Set Variable           ${${number} * ${number}}
    Return From Keyword     ${result}
    

*** Test Cases ***
TC-001 Test Keyword Calculate Square
    ${square}              Calculate Square        ${4}      
    Should Be Equal        ${square}               ${16}