*** Settings ***
Library           SeleniumLibrary
*** Variables ***
${SERVER}         http://www.youtube.com
${BROWSER}        chrome

*** Test Cases ***
Search bubble gum newjeans YouTube
    Open YouTube page
    Search bubble gum newjeans
    Verify video result
    Close Browser

Verify Search Suggestions
    Open YouTube page
    Enter Search Text bubble gum newjeans
    Verify Search Suggestions
    Close Browser

Like and Dislike a Video
    Open YouTube page
    Search bubble gum newjeans
    Like Video
    Dislike Video
    Close Browser

Subscribe to Channel
    Open YouTube page
    Search bubble gum newjeans
    Subscribe to Channel
    Close Browser

Verify Video Details
    Open YouTube page
    Search bubble gum newjeans
    Verify Video Title and Description
    Close Browser

Add Comment to Video
    Open YouTube page
    Search bubble gum newjeans
    Add Comment
    Close Browser

Navigate to Trending Page
    Open YouTube page
    Navigate to Trending
    Close Browser

Verify Trending Videos
    Open YouTube page
    Navigate to Trending
    Verify Trending Video Titles
    Close Browser

Verify Video Playback
    Open YouTube page
    Search bubble gum newjeans
    Verify Playback
    Close Browser

Share Video Link
    Open YouTube page
    Search bubble gum newjeans
    Share Video Link
    Close Browser

*** Keywords ***
Open YouTube page
    Open Browser    ${SERVER}    ${BROWSER}

Search bubble gum newjeans
    Input Text    name=search_query   bubble gum newjeans
    Click Element    id=search-icon-legacy
    Wait Until Page Contains    NewJeans (뉴진스) 'Bubble Gum' Official MV
    Click Element   //a[contains(@title, "NewJeans (뉴진스) 'Bubble Gum' Official MV")]

Verify video result
    Wait Until Page Contains Element  //h1[contains(@class, 'title') and contains(text(), 'NewJeans (뉴진스) 'Bubble Gum' Official MV')]

Verify Search Suggestions
    Enter Search Text  bubble gum newjeans
    Wait Until Page Contains Element  //ul[@role='listbox']

Like Video
    Click Element  //button[class="YtLikeButtonViewModelHost"]

Dislike Video
    Click Element  //button[class="YtDislikeButtonViewModelHost"]

Subscribe to Channel
    Click Element  //button[contains(@aria-label, 'Subscribe')]
    Wait Until Page Contains Element  //yt-formatted-string[text()='Subscribed']

Verify Video Title and Description
    Wait Until Page Contains Element  //h1[contains(@class, 'title') and contains(text(), 'Bubble Gum')]
    Element Should Contain  //div[contains(@id, 'description')]  NewJeans

Add Comment
    Scroll Element Into View  //ytd-comments
    Input Text  //div[contains(@id, 'contenteditable-root')]  Great video!
    Click Element  //ytd-button-renderer[@id='submit-button']
    Wait Until Page Contains Element  //ytd-comment-renderer//yt-formatted-string[contains(text(), 'Great video!')]

Navigate to Trending
    Click Element  //a[@title='Trending']
    Wait Until Page Contains Element  //h1[text()='Trending']

Verify Trending Video Titles
    Wait Until Page Contains Element  //ytd-video-renderer
    Get Text  (//ytd-video-renderer//h3)[1]  ${video_title}
    Element Should Be Visible  //ytd-video-renderer

Verify Playback
    Click Element  //button[@aria-label='Play']
    Wait Until Page Contains Element  //button[@aria-label='Pause']

Share Video Link
    Click Element  //button[@aria-label='Share']
    Wait Until Page Contains Element  //input[@id='share-url']
    Get Text  //input[@id='share-url']  ${share_link}




