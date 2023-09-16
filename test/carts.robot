*** Settings ***
Library    SeleniumLibrary
Resource    ../keywords.resource
Test Setup    Go To    https://www.saucedemo.com/

*** Test Cases ***
TC_CART_001
    Login User
    Click Add to Cart
    Wait Until Element Contains    shopping_cart_container    1    3s

TC_CART_002
    Login User
    Remove from Cart
    Wait Until Element Is Visible    id=shopping_cart_container   

TC_CART_003
    Login User
    Click Link    id=item_4_title_link
    Wait Until Page Contains    Sauce Labs Backpack
    Click Add to Cart
    Wait Until Element Contains    id=shopping_cart_container    1

TC_CART_004
    Login User
    Click Link    id=item_4_title_link
    Wait Until Page Contains    Sauce Labs Backpack
    Remove from Cart
    Wait Until Element Is Visible    id=shopping_cart_container    

*** Keywords ***
Click Add to Cart
    Click Button    id=add-to-cart-sauce-labs-backpack

Remove from Cart
    Click Button    id=remove-sauce-labs-backpack