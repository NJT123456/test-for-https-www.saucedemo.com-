*** Settings ***
Library    SeleniumLibrary
Test Setup    Go To    https://www.saucedemo.com/

*** Test Cases ***
TC_LOGIN_001
    Input Text    id=user-name    standard_user
    Input Password    id=password    secret_sauce
    Click Button    id=login-button
    Welcom Page Should Be Open

TC_LOGIN_002
    Input Text    id=user-name    standard_user
    Input Password    id=password    1234
    Click Button    id=login-button
    Show error

TC_LOGIN_003
    Input Text    id=user-name    user
    Input Password    id=password    secret_sauce
    Click Button    id=login-button
    Show error

TC_LOGIN_004
    Input Text    id=user-name    user
    Input Password    id=password    1234
    Click Button    id=login-button
    Show error

*** Keywords ***
Welcom Page Should Be Open
    Wait Until Page Contains    Swag Labs

Show error
    Wait Until Page Contains    Epic sadface: Username and password do not match any user in this service