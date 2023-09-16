*** Settings ***
Library    SeleniumLibrary

*** Keywords ***
Login User
    [Arguments] 
    Input Text    id=user-name    standard_user
    Input Password    id=password    secret_sauce
    Click Button    id=login-button
    Go To    https://www.saucedemo.com/inventory.html

Click Add to Cart
    Click Button    id=add-to-cart-sauce-labs-backpack