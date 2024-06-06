*** Settings ***
Documentation    Demo de las Varibles
Library     SeleniumLibrary
Documentation    Demo de las Varibles
Library     SeleniumLibrary

*** Variables ***
# variables globales
${nombre}   =   andres
${apellido}     =   castillo
${segundo}  = moreno

*** Test Cases ***
Demo uno
    [Documentation]    Pruebas de nuestras primeras variables
    [Tags]    test_uno
    Log    mi nombre es ${nombre}${apellido}${segundo}
    #variable no global
    ${direccion} =  set variable    nueva direccion
    log to console      ${direccion}

Demo Dos
    [Documentation]    Pruebas de segundas variables
    [Tags]    test_dos
    Log    mi nombre es ${nombre} ${apellido} ${segundo}

Demo Tres
    [Documentation]    Pruebas de terceras variables
    [Tags]    test_tres
    Log    mi nombre es ${nombre} ${apellido} ${segundo}

    ${a}=   set variable  20
    ${b}=   set variable  30
    ${suma}=    Evaluate    ${a}+${b}
    ${multi}=   Evaluate    ${a}*${b}

    log to console    ${a}
    log to console    ${b}
    log to console    ${suma}
    log to console    ${multi}



*** Keywords ***
