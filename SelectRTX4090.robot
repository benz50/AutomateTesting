*** Settings ***
Library           SeleniumLibrary

*** Variables ***
${SERVER}         https://www.jib.co.th/web/
${BROWSER}        Chrome

*** Test Cases ***
Select a graphics card
    Open JIB page
    Select All Product
    Tick graphics card    
    Add asus rtx4090

*** Keywords ***
Open JIB page
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
