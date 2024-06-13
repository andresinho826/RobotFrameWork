*** Settings ***
Documentation    Demo de las Varibles
Library     SeleniumLibrary

*** Variables ***
${url} =     https://qa-automation-practice.netlify.app/radiobuttons
${browser} =     chrome



*** Test Cases ***
Demo uno
    [Documentation]    Pruebas de nuestras primeras variables
    [Tags]    test_uno
    Open Browser        ${url}        ${browser}
    Maximize Browser Window
    title should be    xxxxxx
    set selenium implicit wait    10
    set selenium speed    .1s


    close browser
*** Keywords ***
