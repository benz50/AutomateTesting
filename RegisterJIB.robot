*** Settings ***
Library           SeleniumLibrary
*** Variables ***
${SERVER}         https://www.jib.co.th/web/
${SERVER2}         https://www.thaiwatsadu.com/
${BROWSER}        Chrome
*** Test Cases ***
Search jib and register
    Open JIB page
    Register Jib
  
*** Keywords ***
Open JIB page
    Open Browser    ${SERVER}    ${BROWSER}
Register Jib
    Wait Until Element Is Visible    xpath=//a[@href='javascript:;' and @title='Close' and contains(@class, 'fancybox-item') and contains(@class, 'fancybox-close')]
    Wait Until Element Is Enabled    xpath=//a[@href='javascript:;' and @title='Close' and contains(@class, 'fancybox-item') and contains(@class, 'fancybox-close')]
    Click Link    xpath=//a[@href='javascript:;' and @title='Close' and contains(@class, 'fancybox-item') and contains(@class, 'fancybox-close')]
    Log Source
    Wait Until Element Is Visible    xpath=//a[@href='https://www.jib.co.th/web/signin']
    Wait Until Element Is Enabled    xpath=//a[@href='https://www.jib.co.th/web/signin']
    Click Element    xpath=//a[@href='https://www.jib.co.th/web/signin']
    Wait Until Element Is Visible    xpath=//a[@href='https://www.jib.co.th/web/signin/register']
    Wait Until Element Is Enabled    xpath=//a[@href='https://www.jib.co.th/web/signin/register']
    Click Element    xpath=//a[@href='https://www.jib.co.th/web/signin/register']
    Log Source
    Input Text    id=name    abcdefg
    Input Text    id=lastname    kfhfidhfu
    Select From List By Value    id=user_type_cop    1
    Input Text    id=mobile    0946521144
    Input Text    id=email_con    bezjd@gmail.com
    Input Text    id=password    sgfdsdkhb124
    Input Text    id=confirmpassword    sgfdsdkhb124
    Select From List By Value    id=gender    m
    Select From List By Value    id=bday    14
    Select From List By Value    id=bmonth    02
    Select From List By Value    id=byear    2003
    Click Element    id=f_confirm
    Click Button    xpath=//button[contains(@class, 'btn') and contains(@class, 'btn-success')]



