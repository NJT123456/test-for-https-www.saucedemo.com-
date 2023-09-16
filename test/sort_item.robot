*** Settings ***
Library    SeleniumLibrary
Resource    ../keywords.resource
Test Setup    Go To    https://www.saucedemo.com/

*** Test Cases ***
TC_SORTITEM_001
    Login User
    Select From List By Value    class=product_sort_container    az
    List Selection Should Be    class=product_sort_container   az

TC_SORTITEM_002
    Login User
    Select From List By Value    class=product_sort_container    za
    List Selection Should Be    class=product_sort_container   za

TC_SORTITEM_003
    Login User
    Select From List By Value    class=product_sort_container    lohi
    List Selection Should Be    class=product_sort_container   lohi

TC_SORTITEM_004
    Login User
    Select From List By Value    class=product_sort_container    hilo
    List Selection Should Be    class=product_sort_container   hilo