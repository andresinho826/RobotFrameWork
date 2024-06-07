*** Settings ***
Documentation    Proyecto de pruebas robotframework
Library     SeleniumLibrary
Documentation    Proyecto de pruebas robotframework
Library     SeleniumLibrary

*** Variables ***
${url}=     https://demoqa.com/text-box
${navegador}=   chrome
${nombre} =     Andres
${email} =      andres123@gmail.com

*** Test Cases ***
Practica validando titulo
    [Documentation]    primera prueba del sistema
    [Tags]    test_uno
    Open Browser        ${url}        ${navegador}
    Maximize Browser Window
    #validando titulo
    title should be        DEMOQA
    Sleep    5
    input text    id=userName   ${nombre}
    input text    id=userEmail  ${email}
    input text    id=currentAddress     direccion uno
    input text    id=permanentAddress   direccion dos
    # hacer scroll to be visible button on page
    execute javascript      window.scrollTo(0,600)
    Sleep    3
    click button    id=submit
    Sleep    5
    Close Browser

*** Keywords ***
