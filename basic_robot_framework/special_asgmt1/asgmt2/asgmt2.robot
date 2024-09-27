*** Keywords ***
Print Fruits
    [Arguments]                    @{fruits}
    FOR    ${fruit}    IN          @{fruits}
        Log                        ${fruit}        console=True
    END

*** Test Cases ***
TC-001 Test Keyword Print Fruits
    Print Fruits     apple     banana     cherry