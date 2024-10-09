*** Settings ***
Resource                         ./import.robot

*** Keywords ***
Open demo application
   AppiumLibrary.Open application            remote_url=${remote_url}   
    ...        automationName=${automation_name}
    ...        deviceName=${device_name}
    ...        platformVersion=${platform_version}
    ...        platformName=${platform_name}
    ...        appPackage=${app_package}
    ...        appActivity=${app_activity}
    ...        app=${app}

Click cart icon
    AppiumLibrary.Click element               ${common_locator.icon_cart}