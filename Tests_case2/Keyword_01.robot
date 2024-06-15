*** Settings ***
Documentation    Demo de las Varibles
Library     SeleniumLibrary

*** Variables ***
${url} =     https://qa-automation-practice.netlify.app/register
${browser} =     chrome



*** Test Cases ***
Demo keywords
    configuracion inicial
    llenando datos primarios
    llenando datos secundarios
    usuario creado
    cerrando navegador

*** Keywords ***

configuracion inicial
    [Documentation]    Pruebas para el uso de los keywords
    [Tags]    test_uno
    Open Browser        ${url}        ${browser}
    Maximize Browser Window
    title should be    QA Practice | Learn with RV
    set selenium implicit wait    10
    set selenium speed    .4s

    wait until page contains    Register Form
    wait until page contains element    xpath=//*[contains(text(), 'Register Form')]

llenando datos primarios
    #datos primarios
    input text    id=firstName      Andres
    input text    id=lastName       Castillo
    input text    id=phone      123456789

llenando datos secundarios
    #Datos secundarios
    select from list by index    id=countries_dropdown_menu     10
    input text   id=emailAddress        andres@hotmail.com
    input password    id=password       123456789
    #click on checkbox
    click button    id=exampleCheck1
    click button    id=registerBtn
usuario creado
    wait until page contains    The account has been successfully created!
    wait until page contains element    id=message

cerrando navegador
    close browser
