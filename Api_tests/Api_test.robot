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

    #Validaciones
    ${status}=      Convert To String    ${response.status_code}
    Should Be Equal    ${status}    200
    
    ${body}=      Convert To String    ${response.content}
    Should Contain    ${body}    rachel.howell@reqres.in


Api agregar registro (POST)
    [Documentation]    Pruebas Api Rest POST
    [Tags]    test_post
    Create Session    pagina_api    ${base}
    ${body}=        Create Dictionary       name=Aaron      job=software       id=180
    ${header}=      Create Dictionary   Content-Type=application/json;  charset=utf-8

    ${response}=        Post Request    pagina_api    api/users     data=${body}    headers=${header}

    Log To Console    ${response.status_code}
    Log To Console    ${response.content}
    Log To Console    ${response.headers}

    #Validaciones
    ${status}=      Convert To String    ${response.status_code}
    Should Be Equal    ${status}    201

    ${res-body}=      Convert To String    ${response.content}
    Log To Console    RESP-BODY---->>>
    Log To Console    ${res-body}
    Should Contain    ${res-body}    createdAt


Api consulta Get por id
    [Documentation]    Pruebas Api Rest get por ID
    [Tags]    test_get_id
    Create Session    pagina_api    ${base}
    ${response}=    Get Request    pagina_api    api/users/12


    Log To Console    ${response.status_code}
    Log To Console    ${response.content}
    Log To Console    ${response.headers}

    #Validaciones
    ${status}=      Convert To String    ${response.status_code}
    Should Be Equal    ${status}    200

    ${body}=      Convert To String    ${response.content}
    Should Contain    ${body}    Rachel


Api actualizar un registro (PUT)
    [Documentation]    Pruebas Api Rest PUT
    [Tags]    test_put
    Create Session    pagina_api    ${base}
    ${body}=        Create Dictionary       name=Aaron      job=software       id=4
    ${header}=      Create Dictionary   Content-Type=application/json;  charset=utf-8

    ${response}=        put Request    pagina_api    api/users/4     data=${body}    headers=${header}

    Log To Console    ${response.status_code}
    Log To Console    ${response.content}
    Log To Console    ${response.headers}

    #Validaciones
    ${status}=      Convert To String    ${response.status_code}
    Should Be Equal    ${status}    200

    ${res-body}=      Convert To String    ${response.content}
    Log To Console    RESP-BODY---->>>
    Log To Console    ${res-body}
    #Should Contain    ${res-body}    eve.holt@reqres.in


Api ELIMINAR un registro (DELETE)
    [Documentation]    Pruebas Api Rest DELETE
    [Tags]    test_delete
    Create Session    pagina_api    ${base}

    ${response}=        delete Request    pagina_api    api/users/4

    Log To Console    ${response.status_code}

    #Validaciones
    ${status}=      Convert To String    ${response.status_code}
    Should Be Equal    ${status}    204
*** Keywords ***
