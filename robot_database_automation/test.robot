*** Settings ***
Library                DatabaseLibrary

*** Variables ***
${connection_string}            database='training_platform_db',
...        user='doppio-training-user',
...        password='Doppio123*',
...        host='192.8.8.124',
...        port='10004',
${db_type}                     psycopg2

*** Keywords ***
Connect to database
    DatabaseLibrary.Connect to database using custom params        ${db_type}       ${connection_string}
    Log To Console            Connect to database

Disconnect from database
    DatabaseLibrary.Disconnect from database
    Log To Console            Disconnect from database

Check if exists in database
    DatabaseLibrary.Check if exists in database             SELECT * FROM product WHERE name='Zoppee phone'
    Log To Console            Data exists in database

*** Test Cases ***
TC-001 Connect and disconnect from database
    Connect to database
    Disconnect from database

    
TC-002 Check data in database   
    Connect to database
    Check if exists in database