*** Keywords ***
Create User Info
    ${user_info}           Create Dictionary        name=John    age=30    city=Bangkok
    Return From Keyword    ${user_info}

*** Test Cases ***
TC-001 Test Keyword Create User Info
    ${user}                Create User Info
    Log                    Name: ${user.name}       console=True