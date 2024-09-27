*** Settings ***
Variables            variables.yaml       

*** Test Cases ***
TC-001 Test Load Variables 'name' from YAML
    Log        ${user.name}            console=True

TC-002 Test Load Variables 'age' from YAML
    Log        ${user.age}             console=True

TC-003 Test Load Variables 'city' from YAML
    Log        ${user.city}            console=True
    