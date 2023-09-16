*** Settings ***
Library    SeleniumLibrary
Test Setup    Go To    https://www.saucedemo.com/

*** Test Cases ***
TC_SEE_DATA_001
    Input Text    id=user-name    standard_user
    Input Password    id=password    secret_sauce
    Click Button    id=login-button
    Welcom Page Should Be Open
    Click Link    id=item_4_title_link
    Wait Until Page Contains    Sauce Labs Backpack
    Click Button    id=back-to-products
    Wait Until Page Contains    Products


*** Keywords ***
Welcom Page Should Be Open
    Go To    https://www.saucedemo.com/inventory.html