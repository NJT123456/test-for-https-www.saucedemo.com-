*** Settings ***
Library    SeleniumLibrary
Resource    ../keywords.resource
Test Setup    Go To    https://www.saucedemo.com/

*** Test Cases ***
TC_CHECK_OUT_001
    Before checkout
    Click Add to Cart
    Wait Until Element Contains    shopping_cart_container    1    3s
    Click checkout
    Click Element    id=continue  
    Show error    First Name is required

TC_CHECK_OUT_002
    Before checkout
    Click checkout
    Input Information    admin
    Show error    Last Name is required

TC_CHECK_OUT_003
    Before checkout
    Click checkout
    Input Information    admin    124
    Show error    Postal Code is required

TC_CHECK_OUT_004
    Before checkout
    Click checkout
    Input Information    admin    124    123456789
    Wait Until Location Is    https://www.saucedemo.com/checkout-step-two.html

TC_CHECK_OUT_005
    Before checkout
    Click checkout
    Input Information    admin    124    123456789
    Wait Until Location Is    https://www.saucedemo.com/checkout-step-two.html
    Click Button    id=finish
    Wait Until Location Is    https://www.saucedemo.com/checkout-complete.html

*** Keywords ***
Before checkout
    Login User

Click checkout
    Click Link    class=shopping_cart_link
    Click Button    id=checkout

Input Information
    [Arguments]  ${ft}=   ${lt}=    ${pc}=
    Input Text    id=first-name    ${ft}
    Input Text    id=last-name    ${lt}
    Input Text    id=postal-code    ${pc}
    Click Element    id=continue

Show error
    [Arguments]    ${text}
    Wait Until Page Contains    ${text}

