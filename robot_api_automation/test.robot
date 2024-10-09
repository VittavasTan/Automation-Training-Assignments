*** Settings ***
Library                RequestsLibrary

*** Test Cases ***
TC-001 Verify when input wrong username or password, API should return error
    Create session                        loginSession            http://localhost:8082
    &{request_body}                       Create dictionary       username=doppio        password=1234
    ${resp}                               Post on session         loginSession                
    ...    /login                 
    ...    json=&{request_body} 
    ...    expected_status=401
    Should be equal        ${resp.json()['status']}        error
    Should be equal        ${resp.json()['message']}       invalid username or password 


TC-002 Verify that can get asset list from get API correctly
    Create session                        assetSession            http://localhost:8082
    &{request_body}                       Create dictionary       username=doppio        password=weBuildBestQa
    ${resp}                               Post on session         assetSession                
    ...    /login                 
    ...    json=&{request_body} 
    ...    expected_status=200
    ${token}                              Set variable            ${resp.json()['message']}
    ${headers}                            Create dictionary       token=${token}
    ${get_resp}                           Get on session          assetSession           /assets        headers=${headers}
    Log to console                        ${get_resp.text}