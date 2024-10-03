*** Settings ***
Resource                         ./import.robot

*** Keywords ***
Open Demo Application
   AppiumLibrary.Open Application            remote_url=${remote_url}   
    ...        automationName=${automation_name}
    ...        deviceName=${device_name}
    ...        platformVersion=${platform_version}
    ...        platformName=${platform_name}
    ...        appPackage=${app_package}
    ...        appActivity=${app_activity}
    ...        app=${app}

Click Cart Icon
    AppiumLibrary.Click Element               ${common_locator.icon_cart}