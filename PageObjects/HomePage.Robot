*** Variables ***
${Expected_Page_Title_Home}   Online Shopping site in India: Shop Online for Mobiles, Books, Watches, Shoes and More - Amazon.in

*** Keywords ***

Validate Page Titles
    [Documentation]  Validates page titles after navigating to a page
    ${Actual_Page_Title} =  Get Title
    Should be equal as strings  ${Actual_Page_Title}  ${Expected_Page_Title_Home}  successfull navigating to ${Expected_Page_Title_Home}

