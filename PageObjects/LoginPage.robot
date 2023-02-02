*** Settings ***
Library  Builtin


*** Variables ***
${Login_page}   //*[@id="nav-link-accountList"]
${EmailD}   //*[@id="ap_email"]
${Continue}   continue
${Password_xpath}   password       #this will click on id=password
${signInSubmit}   signInSubmit
${Expected_Page_Title_Login}   Amazon Sign In
${Sign_Out}  nav-item-signout
${Accounts_Info_Details}   nav-link-accountList


*** Keywords ***
Login To Amazon ${UserID} and ${Password}
    [Documentation]  This keyword is for loggin into Amazon
    click element  ${Login_page}
    input text   ${EmailD}   ${UserID}
    click element   ${Continue}
    input text    ${Password_xpath}   ${Password}
    click element  ${signInSubmit}
    Sleep  5s


Validate Page Titles
    [Documentation]  Validates page titles after navigating to a page
    ${Actual_Page_Title} = get title
    Should be equal as strings  ${Actual_Page_Title}  ${Expected_Page_Title_Login}  log  successfull navigating to ${Expected_Page_Title_Login}


LogOut From Amazon
    Mouse Over  ${Accounts_Info_Details}
    Sleep  3s
    Click Element  ${Sign_Out}