*** Settings ***
Documentation    Practica excel uno
Library     SeleniumLibrary

*** Variables ***
${url} =     https://demoqa.com/text-box
${browser} =     chrome
#Resource       ../Keywords_1/Funciones.robot



*** Test Cases ***
Demo uno
    [Documentation]    Practica excel uno
    [Tags]    test_uno
    Open Browser        ${url}        ${browser}
    Maximize Browser Window
    title should be    xxxxxx
    set selenium implicit wait    10
    set selenium speed    .1s



*** Keywords ***
inicio
    [Documentation]    Practica excel uno
    [Tags]    test_uno
    Open Browser        ${url}        ${browser}
    Maximize Browser Window
    title should be     ToolsQA
    set selenium implicit wait    10
    set selenium speed    .1s


final
    Sleep    2
    Close All Browsers
    #close browser