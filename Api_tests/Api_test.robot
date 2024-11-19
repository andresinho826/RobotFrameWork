*** Settings ***
Documentation       Api Rest
Library     SeleniumLibrary
Library     RequestsLibrary
Library     Collections

*** Variables ***
${base} =     https://reqres.in/
${uri}=       api/users?page=2
#${browser} =     chrome
#Resource       ../Keywords_1/Funciones.robot



*** Test Cases ***
Demo Uno Api Testing
    [Documentation]    Pruebas Api Rest
    [Tags]    test_get
    Create Session    pagina_api    ${base}
    ${response}=    Get Request    pagina_api    ${uri}
    
    Log To Console    ${response.status_code}
    Log To Console    ${response.content}
    Log To Console    ${response.headers}



*** Keywords ***
