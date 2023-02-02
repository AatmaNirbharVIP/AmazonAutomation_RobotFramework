*** Settings ***
Library  SeleniumLibrary


*** Variables ***
${Cart_Icon}   nav-cart
${Cart_Page_Title}  Amazon.in Shopping Cart


*** Keywords ***
Click on Cart Icon
    Click Element  ${Cart_Icon}

Validate Page Titles
    [Documentation]  Validates page titles after navigating to a page
    ${Actual_Page_Title} =  Get Title
    Should be equal as strings  ${Actual_Page_Title}  ${Cart_Page_Title}  log  successfull navigating to ${Cart_Page_Title}


Validate If Cart Contains Item
    ${Product_Name_current} =  Evaluate  String(${Product_Name}[0:10:1])
    page should contain  ${Product_Name_current}




