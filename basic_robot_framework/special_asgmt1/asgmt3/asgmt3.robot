*** Keywords ***
Print User Info
    [Arguments]                &{user_info}
    Log                        Name: ${user_info["name"]}     console=True
    Log                        Age: ${user_info["age"]}       console=True
    Log                        City: ${user_info["city"]}     console=True

*** Test Cases ***
TC-001 Test Print User Info
    &{user_info}        Create Dictionary    name=Vittavas    age=22    city=Tak
    Print User Info     &{user_info}       