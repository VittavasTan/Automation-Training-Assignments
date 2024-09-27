*** Keywords ***
Evaluate Score
    [Arguments]    ${score}
    IF                    ${score} >= 90        Log    A    console=True
    ...    ELSE IF        ${score} >= 80        Log    B    console=True
    ...    ELSE IF        ${score} >= 70        Log    C    console=True
    ...    ELSE IF        ${score} >= 60        Log    D    console=True
    ...    ELSE                                 Log    F    console=True  

*** Test Cases ***
TC-001 Score is more than 90
    Evaluate Score    95

TC-002 Score is equal to 90
    Evaluate Score    90

TC-003 Score is more than 80
    Evaluate Score    85

TC-004 Score is equal to 80
    Evaluate Score    80

TC-005 Score is more than 70
    Evaluate Score    75

TC-006 Score is equal to 70
    Evaluate Score    70

TC-007 Score is more than 60
    Evaluate Score    65

TC-008 Score is equal to 60
    Evaluate Score    60

TC-009 Score is below 60
    Evaluate Score    50








    