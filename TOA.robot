*** Settings ***
Library           SeleniumLibrary

*** Variables ***
${SERVER}         https://www.thaiwatsadu.com/
${BROWSER}        Chrome

*** Test Cases ***
Select color
    Open Thaiwatsadu page
    Select Paint and painting equipment    
    Select color and Select nongjok
    Go to cart 

*** Keywords ***
Open Thaiwatsadu page
    Open Browser    ${SERVER}    ${BROWSER}   id="input"
    
Select Paint and painting equipment
    Wait Until Element Is Visible    xpath=//div[@class='absolute top-0 right-0 cursor-pointer z-50']
    Wait Until Element Is Enabled    xpath=//div[@class='absolute top-0 right-0 cursor-pointer z-50']
    Click Element    xpath=//div[@class='absolute top-0 right-0 cursor-pointer z-50']
    Log Source
    # Hover over the dropdown menu and click the desired link
    Scroll Element Into View    xpath=//a[contains(@class, 'select-none') and @href='/th/category/%E0%B8%AA%E0%B8%B5%E0%B9%81%E0%B8%A5%E0%B8%B0%E0%B8%AD%E0%B8%B8%E0%B8%9B%E0%B8%81%E0%B8%A3%E0%B8%93%E0%B9%8C%E0%B8%97%E0%B8%B2%E0%B8%AA%E0%B8%B5-60']
    Wait Until Element Is Visible    xpath=//a[contains(@class, 'select-none') and @href='/th/category/%E0%B8%AA%E0%B8%B5%E0%B9%81%E0%B8%A5%E0%B8%B0%E0%B8%AD%E0%B8%B8%E0%B8%9B%E0%B8%81%E0%B8%A3%E0%B8%93%E0%B9%8C%E0%B8%97%E0%B8%B2%E0%B8%AA%E0%B8%B5-60']
    Wait Until Element Is Enabled    xpath=//a[contains(@class, 'select-none') and @href='/th/category/%E0%B8%AA%E0%B8%B5%E0%B9%81%E0%B8%A5%E0%B8%B0%E0%B8%AD%E0%B8%B8%E0%B8%9B%E0%B8%81%E0%B8%A3%E0%B8%93%E0%B9%8C%E0%B8%97%E0%B8%B2%E0%B8%AA%E0%B8%B5-60']
    Click Element    xpath=//a[contains(@class, 'select-none') and @href='/th/category/%E0%B8%AA%E0%B8%B5%E0%B9%81%E0%B8%A5%E0%B8%B0%E0%B8%AD%E0%B8%B8%E0%B8%9B%E0%B8%81%E0%B8%A3%E0%B8%93%E0%B9%8C%E0%B8%97%E0%B8%B2%E0%B8%AA%E0%B8%B5-60']

Select color and Select nongjok  
    Wait Until Page Contains Element  xpath://*[@id="product-image-60093542"]
    Click Element  xpath://button[contains(text(),'ใส่รถเข็น')]
    Wait Until Element Is Visible    xpath=//div[contains(text(), 'หนองจอก')]//following::button[contains(text(), 'เลือกสาขา')]
    Click Button    xpath=//div[contains(text(), 'หนองจอก')]//following::button[contains(text(), 'เลือกสาขา')]
    Wait Until Element Is Visible    xpath=//button[contains(@class, 'swal2-confirm')]
    Click Button    xpath=//button[contains(@class, 'swal2-confirm')]

Go to cart
    Wait Until Element Is Visible    xpath=//a[@href='/th/cart']
    Click Link    xpath=//a[@href='/th/cart']
    Wait Until Element Is Visible    xpath=//input[@aria-label='Quantity']
    ${quantity} =    Get Value    xpath=//input[@aria-label='Quantity']
    Should Be Equal As Numbers    ${quantity}    1
    Click Button    xpath=//input[@aria-label='Quantity']/following-sibling::div[contains(@class, 'bi-plus')]
    Click Button    xpath=//input[@aria-label='Quantity']/following-sibling::div[contains(@class, 'bi-plus')]
    ${new_quantity} =    Get Value    xpath=//input[@aria-label='Quantity']
    Should Be Equal As Numbers    ${new_quantity}    3
    Wait Until Element Is Visible    xpath=//button[div[text()='ดำเนินการต่อ']]
    Click Button    xpath=//button[div[text()='ดำเนินการต่อ']]

