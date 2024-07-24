*** Settings ***
Documentation    Practica excel uno
Library     SeleniumLibrary
#Resource       ../Keywords_1/Funciones.robot
Library         DataDriver          C:/repo/RobotFrameWork/Tests_case2/Files/Testing.xlsx      sheet_name=Sheet1


Test Setup      inicio
Task Teardown   final
Test Template   Conectar Excel

*** Variables ***
${url} =     https://demoqa.com/text-box
${browser} =     chrome




*** Test Cases ***
Demo uno Excel using    ${name}     ${email}



*** Keywords ***
inicio
    [Documentation]    Practica excel uno
    [Tags]    test_uno
    Open Browser        ${url}        ${browser}
    Maximize Browser Window
    title should be     DEMOQA
    set selenium implicit wait    10
    set selenium speed    .1s


Conectar Excel
    [Documentation]     Conectando con excel
    [Arguments]         ${name}     ${email}
    Input Text    id=userName    ${name}
    Input Text    id=userEmail    ${email}


final
    Sleep    1
    Close All Browsers
    #close browser