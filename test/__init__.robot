*** Settings ***
Library    SeleniumLibrary
Suite Setup    Open Browser    https://www.saucedemo.com/    chrome
Suite Teardown    Close All Browsers
