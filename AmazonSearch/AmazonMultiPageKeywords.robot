*** Settings ***
Documentation    Suite description

Resource   ../PageObjects/LoginPage.robot
Resource   ../PageObjects/HomePage.robot
Resource  ../PageObjects/UpperSection_Headers.robot
Resource  ../PageObjects/ProductSearchResults.robot
Resource  ../PageObjects/Product_Details.robot
Resource  ../PageObjects/Cart.robot


*** Keywords ***
Navigate to login Page With ${UserID} And ${Password}
    [Documentation]  Navigate to the login page and sign in
    HomePage.Validate Page Titles
    LoginPage.Login To Amazon ${UserID} and ${Password}
    HomePage.Validate Page Titles

Search For a product ${Item}
    UpperSection_Headers.Search On Page  ${Item}
    ProductSearchResults.Validate Page Titles  ${Item}
    ProductSearchResults.Click On First Search Product


Add the Item To Cart
    Product_Details.Validate Page Titles
    Product_Details.Click On Add To Cart


Navigate to cart and verify the product availability
    #[Arguments]  ${Item}
    Cart.Click on Cart Icon
    Cart.Validate Page Titles
    #Cart.Validate If Cart Contains Item  ${Product_Name}


LogOut From Webpage
    LogOut From Amazon

