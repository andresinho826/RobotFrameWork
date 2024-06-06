*** Settings ***
Documentation    Proyecto de pruebas robotframework
Library     SeleniumLibrary

*** Variables ***

*** Test Cases ***
Mi primer test success
    [Documentation]    primera prueba del sistema
    [Tags]    test_uno
    Open Browser    https://demoqa.com/text-box     chrome
    Maximize Browser Window
    Sleep    5
    input text    id=userName   Andres
    input text    id=userEmail  andres123@gmail.com
    input text    id=currentAddress     direccion uno
    input text    id=permanentAddress   direccion dos
    # hacer scroll to be visible button on page
    execute javascript      window.scrollTo(0,600)
    Sleep    3
    click button    id=submit
    Sleep    5
    Close Browser

Mi segundo test failed
    [Documentation]    segunda prueba del sistema
    [Tags]    test_dos
    Open Browser    https://demoqa.com/text-box     chrome
    Maximize Browser Window
    Sleep    5
    input text    id=userName   Andres
    input text    id=userEmail  andres123@gmail.com
    input text    id=currentAddress     direccion uno
    input text    id=permanentAddress   direccion dos
    # hacer scroll to be visible button on page
    #execute javascript      window.scrollTo(0,600)
    #Sleep    3
    click button    id=submit
    Sleep    5
    Close Browser
*** Keywords ***
