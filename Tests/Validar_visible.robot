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
${t}=   1

*** Test Cases ***
Practica validando titulo
    [Documentation]    primera prueba del sistema
    [Tags]    test_uno
    Open Browser        ${url}        ${navegador}
    Maximize Browser Window
    #validando titulo
    title should be        DEMOQA
    Sleep     ${t}
    #should be visible and enable
    ${name}=    set variable    id=userName
    ${dir1}=    set variable    id=currentAddress
    element should be visible    ${name}
    element should be enabled    ${name}

    input text    id=userName   ${nombre}
    input text    id=userEmail  ${email}
    input text    id=currentAddress     direccion uno
    input text    id=permanentAddress   direccion dos

    # hacer scroll to be visible button on page
    execute javascript      window.scrollTo(0,600)
    Sleep     ${t}
    click button    id=submit
    Sleep     ${t}
    Close Browser


Practica validando atributo
    [Documentation]    segunda prueba del sistema
    [Tags]    test_dos
    Open Browser        ${url}        ${navegador}
    Maximize Browser Window
    #validando titulo
    title should be        DEMOQA
    Sleep     ${t}
    #should be visible and enable
    ${name}=    set variable    id=userName
    ${dir1}=    set variable    id=currentAddress
    element should be visible    ${name}
    element should be enabled    ${name}

    input text    id=userName   ${nombre}
    input text    id=userEmail  ${email}

    #validate atribute
    element attribute value should be    ${dir1}    placeholder     Current Address
    input text    id=currentAddress     direccion uno
    input text    id=permanentAddress   direccion dos

    # hacer scroll to be visible button on page
    execute javascript      window.scrollTo(0,600)
    Sleep     ${t}
    click button    id=submit
    Sleep     ${t}
    Close Browser

*** Keywords ***
