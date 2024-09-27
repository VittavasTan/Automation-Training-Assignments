*** Keywords ***
Create Fruit List
    @{fruits}                Create List        apple     banana    cherry
    Return From Keyword      @{fruits}

*** Test Cases *** 
TC-001 Test Keyword Create Fruit List
    @{my_fruits}            Create Fruit List
    Log                     ${my_fruits[0]}     console=True
    