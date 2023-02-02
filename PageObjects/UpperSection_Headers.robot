*** Settings ***

*** Variables ***
${Search}  twotabsearchtextbox
${Search_Button}  nav-search-submit-button


*** Keywords ***
Search On Page
    [Arguments]  ${Item}
    Input text  ${Search}  ${Item}
    click Button    ${Search_Button}

