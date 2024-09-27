*** Keywords ***
Print All Items
    [Arguments]              @{items}
    FOR    ${item}    IN     @{items}
        Log                  ${item}     console=True
    END

*** Test Cases ***
TC-001 Test Keyword Print All Items with 3 elements
    Print All Items     apple    banana    cherry

TC-002 Test Keyword Print All Items with 5 elements
    Print All Items     cat    dog    bird    fish    Moodeng