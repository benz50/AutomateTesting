*** Settings ***
Library           SeleniumLibrary
*** Variables ***
${SERVER}         http://www.youtube.com
${BROWSER}        edge
*** Test Cases ***
Search BLACKPINK - ‘Pink Venom’ M/V from youtube
     Open youtube page
     Search BLACKPINK - ‘Pink Venom’ M/V
*** Keywords ***
Open youtube page
    Open Browser    ${SERVER}    ${BROWSER}
Search BLACKPINK - ‘Pink Venom’ M/V
    Input Text    name=search_query   BLACKPINK - ‘Pink Venom’ M/V
    Click Button    id=search-icon-legacy
    Wait Until Page Contains    BLACKPINK - ‘Pink Venom’ M/V
    Click Link   link:BLACKPINK - ‘Pink Venom’ M/V

