*** Settings ***
Library     SeleniumLibrary
Library     Selenium2Library

*** Keywords ***
Launch Browser
    [Arguments]  ${URL}  ${Browser}
    Open Browser  ${URL}  ${Browser}
    maximize browser window


