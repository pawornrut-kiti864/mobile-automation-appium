*** Settings ***
Library    AppiumLibrary
Resource   variables.robot

*** Keywords ***
Open Android App
    Open Application    ${REMOTE_URL}
    ...    platformName=${PLATFORM_NAME}
    ...    deviceName=${DEVICE_NAME}
    ...    app=${APP}
    ...    automationName=${AUTOMATION_NAME}
    ...    autoGrantPermissions=true
    ...    noReset=true

Close Android App
    Close Application