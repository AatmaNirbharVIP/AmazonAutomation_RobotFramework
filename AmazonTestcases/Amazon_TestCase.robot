*** Settings ***
Documentation    Suite description

Resource   ../AmazonSearch/AmazonMultiPageKeywords.robot
Resource  ../Resources/Environment.robot
Resource   ../Resources/CommonKeywords.robot

Test Setup  Launch Browser  ${URL}  ${Browser}
Test Teardown   Close All Browsers


*** Test Case ***
E2E Scenario For search and Buy a Product
    AmazonMultiPageKeywords.Navigate to login Page With ${UserID} And ${Password}
    AmazonMultiPageKeywords.Search For a product ${Item}
    AmazonMultiPageKeywords.Add the Item To Cart
    AmazonMultiPageKeywords.Navigate to cart and verify the product availability
    AmazonMultiPageKeywords.LogOut From Webpage
