***Settings***
Resource    ../Operations/RF_keywords.robot
Resource    ../Operations/RF_variables.robot

***Test Cases***
User should be select electronic accessories
    [Tags]      sanity
    Open the Flipkart
    Login with valid number and password
    Navigate to category "Electronics"
    Select Power Bank
    Switch to new window
    Selected electronic accessories is added to the cart

User should be able to verify the item in cart page
    [Tags]      sanity
    Open the Flipkart home page
    Verify the item in cart page
    Close the Browser