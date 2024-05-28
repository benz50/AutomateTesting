*** Settings ***
Library           SeleniumLibrary


*** Variables ***
${SERVER}         http://www.mut.ac.th
${BROWSER}        edge


*** Test Cases ***
Search dormitory from mut
    Open mut page
    Search Siam Chamnankit Family


*** Keywords ***
Open mut page
    Open Browser    ${SERVER}    ${BROWSER}


Search Siam Chamnankit Family
    Click Element    //a[contains(text(),'บทความ')]
