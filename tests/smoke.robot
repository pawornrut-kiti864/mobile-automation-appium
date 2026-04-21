*** Settings ***
Resource    ../resources/driver.robot
Resource    ../resources/keywords.robot

Suite Setup       Open Android App
Suite Teardown    keywords.Close Android App

Test Teardown   Run Keyword If Test Failed    Capture Page Screenshot

*** Test Cases ***

TC01 - Verify App Open
    Verify Settings Page

TC02 - Open Views Menu
    Open Menu Item    Views