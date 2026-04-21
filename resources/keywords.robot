*** Settings ***
Library    AppiumLibrary

*** Keywords ***
Verify Settings Page
    Wait Until Page Contains Element    xpath=//android.widget.TextView    20s

Open Menu Item
    [Arguments]    ${text}

    FOR    ${i}    IN RANGE    0    8

        ${clicked}=    Run Keyword And Return Status
        ...    Click Element    xpath=//*[contains(@text,'${text}')]

        IF    ${clicked}
            RETURN
        END

        Swipe By Percent    50    80    50    20
    END

    Capture Page Screenshot
    Fail    Cannot find: ${text}

Close Android App
    Run Keyword And Ignore Error    Close Application