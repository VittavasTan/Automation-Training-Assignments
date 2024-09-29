*** Settings ***
Resource                         ./import.robot

*** Keywords ***
Open Demo Application
   Open Application        remote_url=${remote_url}   
    ...        automationName=${automation_name}
    ...        deviceName=${device_name}
    ...        platformVersion=${platform_version}
    ...        platformName=${platform_name}
    ...        appPackage=${app_package}
    ...        appActivity=${app_activity}

Click Cart Icon
    Click Element                ${common_locator.icon_cart}