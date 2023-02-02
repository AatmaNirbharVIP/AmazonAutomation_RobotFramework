*** Settings ***
Library  SeleniumLibrary
Library  Selenium2Library

*** Variables ***
#${Select_First_Product}   ((//div[contains(@cel_widget_id, "MAIN-SEARCH_RESULTS")])[1]//a)[4]
${Add_To_Cart}  add-to-cart-button
${Product_Title}  productTitle
#${Product_Name}  Get Text  ${Product_Title}
${Product_Name}  Set Test Variable


*** Keywords ***
Click On Add To Cart
    click element  ${Add_To_Cart}


Validate Page Titles
    [Documentation]  Validates page titles after navigating to a page
    ${Actual_Page_Title} =  get title
    ${Product_Name}  Get Text  ${Product_Title}
    #Set Test Variable   ${Product_Name}
    ${Expected_Page_Title_Product_Detail}  Set Variable   ${Product_Name}
    Should contain  ${Actual_Page_Title}  ${Expected_Page_Title_Product_Detail}    log  successfull navigating to ${Expected_Page_Title_Product_Detail}


