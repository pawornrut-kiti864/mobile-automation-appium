*** Settings ***
Library    AppiumLibrary

*** Keywords ***
Verify Settings Page
    Wait Until Page Contains Element    xpath=//android.widget.TextView    20s

Open Network & Internet
    Click Element    xpath=//*[contains(@text,'Network')]

Open About Phone
    Swipe By Percent    50    80    50    20
    Wait Until Page Contains Element    xpath=//*[contains(@text,'About')]    10s
    Click Element    xpath=//*[contains(@text,'About')]