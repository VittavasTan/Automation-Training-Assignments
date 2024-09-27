*** Test Cases ***
TC-001 Test Loop for Fruit List
    @{fruits}        Create List        apple    banana    cherry
    FOR              ${fruit}    IN     @{fruits}
        Log          ${fruit}           console=True
    END