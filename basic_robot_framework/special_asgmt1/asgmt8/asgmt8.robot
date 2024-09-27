*** Settings ***
Library                 SeleniumLibrary

Variables               config.yaml

*** Test Cases ***
TC-001 Test Preload Variables from YAML file
    Open Browser        ${app_url}            browser=gc
    Input Text          id=username           ${credentials.username}
    Input Text          id=password           ${credentials.password}
    Click Element       id=submit
    Sleep               2
    Close Browser

