***Settings***
Library     SeleniumLibrary
Library     Collections

Resource    ../Operations/RF_keywords.robot
Resource    ../Operations/RF_variables.robot

***Keywords***
Open the Flipkart
    Open Browser    ${url}  ${browse}
    Maximize Browser Window
    Sleep   3s
    Log to Console  Browser opened successfully
    Capture Page Screenshot

Login with valid number and password
    Input Text  //input[@class='_2IX_2- VJZDxU']    ${validnum}
    Input Text  //input[@type='password']   ${password}
    Click Element   (//button[@type='submit'])[2]
    ${page_title}=  Get Title
    Verify Webpage Title   ${page_title}
    Log to Console  Login successfully
    Capture Page Screenshot
    

Verify WebPage title
    [Arguments]  ${title_name}
    Wait Until Page Contains  ${title_name}
    
Navigate to category "Electronics"
    Sleep   3s
    Mouse Over  xpath=//span[text()='Electronics']
    Capture Page Screenshot
    sleep   5s
    Click Element   xpath=//a[text()='Power Banks']
    Sleep  2s
    Log to Console  Electronic gadget selected 

Select Power Bank 
    
    Click Element   xpath=//a[text()='Mi 3i 20000 mAh Power Bank (Fast Charging, 18W)']
    Sleep  2s
    ${page}=  Get Title
    Verify WebPage title   ${page}
    Capture Page Screenshot
    Log to Console  Power Bank is selected

Switch to new window
    Select Window    NEW     
    ${newwindow}=    Get Title
    Verify webpage Title    ${newwindow}
    Sleep  3s
    Capture Page Screenshot
    Log to Console  New window opened successfully

Selected electronic accessories is added to the cart 
    #Scroll Element Into View   xpath=//button[@class='_2KpZ6l _2U9uOA _3v1-ww']
    Click Element    xpath=//button[@class='_2KpZ6l _2U9uOA _3v1-ww']
    Sleep  2s
    Capture Page Screenshot
    Log to Console  step6

Open the Flipkart home page
    Click Element   xpath=//img[@title='Flipkart']
    Sleep  2s
    Click Element   xpath=//a[@class='_3SkBxJ']
    Sleep  2s

Verify the item in cart page
    Page should Contain    Mi 3i 20000 mAh Power Bank (Fast Charging, 18W)
    Capture Page Screenshot
    Log to Console  The selected item verified in cart page successfully

Close the Browser
    Close Browser 

    


