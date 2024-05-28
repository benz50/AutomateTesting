*** Settings ***
Library           SeleniumLibrary

*** Variables ***
${SERVER}         https://www.jib.co.th/web/
${SERVER2}        https://www.thaiwatsadu.com/
${BROWSER}        Chrome

*** Test Cases ***
Search jib and register
    Open JIB page
    Register Jib

Select a graphics card
    Open JIB2 page
    Select All Product
    Tick graphics card    
    Add asus rtx4090  

Select color
    Open Thaiwatsadu page
    Select Paint and painting equipment    
    Select color and Select nongjok
    Go to cart 

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

Open JIB2 page
    Open Browser    ${SERVER}    ${BROWSER}

Select All Product
    Wait Until Element Is Visible    xpath=//a[@href='javascript:;' and @title='Close' and contains(@class, 'fancybox-item') and contains(@class, 'fancybox-close')]
    Wait Until Element Is Enabled    xpath=//a[@href='javascript:;' and @title='Close' and contains(@class, 'fancybox-item') and contains(@class, 'fancybox-close')]
    Click Link    xpath=//a[@href='javascript:;' and @title='Close' and contains(@class, 'fancybox-item') and contains(@class, 'fancybox-close')]
    Log Source
    # Hover over the dropdown menu and click the desired link
    Mouse Over    xpath=//li[@class='dropdown']/a[contains(@class, 'dropdown-toggle') and contains(@href, '#')]
    Wait Until Element Is Visible    xpath=//ul[@class='dropdown-menu dropdown-content']/li/a[@href='https://www.jib.co.th/web/product/product_search']
    Wait Until Element Is Enabled    xpath=//ul[@class='dropdown-menu dropdown-content']/li/a[@href='https://www.jib.co.th/web/product/product_search']
    Click Element    xpath=//ul[@class='dropdown-menu dropdown-content']/li/a[@href='https://www.jib.co.th/web/product/product_search']

Tick graphics card  
    Wait Until Page Contains Element    id=sort 
    Log Source 
    Execute Javascript    document.getElementById('sort').scrollIntoView();    # เลื่อนลงไปที่องค์ประกอบที่มี id=sort
    Select From List By Value    id=sort    3
    Log Source

Add asus rtx4090
    Execute Javascript    document.querySelector("div[data-id='55741']").scrollIntoView();   
    Wait Until Element Is Visible    xpath=//div[@data-id='55741' and @data-name='VGA (การ์ดแสดงผล) ASUS TUF GAMING GEFORCE RTX 4090 OC EDITION 24GB GDDR6X' and contains(@class, 'cart_modal') and contains(@class, 'buy_promo')]
    Wait Until Element Is Enabled    xpath=//div[@data-id='55741' and @data-name='VGA (การ์ดแสดงผล) ASUS TUF GAMING GEFORCE RTX 4090 OC EDITION 24GB GDDR6X' and contains(@class, 'cart_modal') and contains(@class, 'buy_promo')]
    Execute Javascript    document.querySelector("div[data-id='55741'][data-name='VGA (การ์ดแสดงผล) ASUS TUF GAMING GEFORCE RTX 4090 OC EDITION 24GB GDDR6X'].cart_modal.buy_promo").click();   
    Wait Until Element Is Visible    xpath=//a[@href='https://www.jib.co.th/web/cart']    timeout=10s
    Wait Until Element Is Enabled    xpath=//a[@href='https://www.jib.co.th/web/cart']    timeout=10s
    Click Element    xpath=//a[@href='https://www.jib.co.th/web/cart']
    Wait Until Element Is Visible    xpath=//a[@href='https://www.jib.co.th/web/cart/address/2']    timeout=10s
    Wait Until Element Is Enabled    xpath=//a[@href='https://www.jib.co.th/web/cart/address/2']    timeout=10s
    Click Element    xpath=//a[@href='https://www.jib.co.th/web/cart/address/2']    

Open Thaiwatsadu page
    Open Browser    ${SERVER2}    ${BROWSER}   
    
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
    Wait Until Page Contains Element    xpath=//*[@id="product-image-60093542"]
    Click Element    xpath=//button[contains(text(),'ใส่รถเข็น')]
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
