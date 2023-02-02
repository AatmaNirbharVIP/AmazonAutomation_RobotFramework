*** Settings ***
Library  SeleniumLibrary
Library  Selenium2Library

*** Variables ***
${Expected_Page_Title_PS}  Amazon.in :
${Select_First_Product}   ((//div[contains(@cel_widget_id, "MAIN-SEARCH_RESULTS")])[1]//a)[4]



*** Keywords ***
Click On First Search Product
    Click Element  ${Select_First_Product}
    Switch Window  new


Validate Page Titles
    [Arguments]  ${Item}
    [Documentation]  Validates page titles after navigating to a page
    ${Actual_Page_Title_Product_Search} =  Get Title
    ${Expected_Page_Title_Product_Search}  Catenate   ${Expected_Page_Title_PS}  ${Item}
    Should be equal as strings  ${Actual_Page_Title_Product_Search}  ${Expected_Page_Title_Product_Search}  successfull navigating to ${Expected_Page_Title_Product_Search}



