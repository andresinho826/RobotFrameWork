*** Settings ***
Library     SeleniumLibrary

*** Variables ***

*** Test Cases ***
Mi primer test
    Open Browser    https://demoqa.com/text-box     chrome
    Maximize Browser Window
    Sleep    5
    Close Browser
*** Keywords ***
