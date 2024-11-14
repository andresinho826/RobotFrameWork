*** Settings ***
Documentation    Practica Bases de Datos Mysql
Library     SeleniumLibrary
Library     DatabaseLibrary
Library     OperatingSystem

Suite Setup     Connect To Database     pymysql         ${dbname}     ${dbuser}     ${dbpass}       ${dbhost}       ${dbport}
Suite Teardown  Disconnect From Database

*** Variables ***
${url} =     https://demoqa.com/text-box
${browser} =     chrome
#Resource       ../Keywords_1/Funciones.robot

${dbname}=      sistema_dos
${dbuser}=      aaron
${dbpass}=      12345
${dbhost}=      127.0.0.1       #localhost
${dbport}=      3307





*** Test Cases ***
Base crear tabla
    [Documentation]     crear una nueva tabla en nuestro sistema
    [Tags]      test_crear_tabla
    ${crear}=   Execute Sql String    CREATE TABLE `personas3` (`id` int(11) NOT NULL,`name` varchar(40) NOT NULL,`ap` varchar(40) NOT NULL);
    Log To Console    ${crear}
    Should Be Equal As Strings    ${crear}    None


Base insertar registros
    [Documentation]     insertar Registros
    [Tags]      test_insertar
    #${insertar}=    Execute Sql String    insert into personas2 values(02,"nata","mosquera")

    ${insertar_global}=    Execute Sql Script      C:/repo/RobotFrameWork/Tests_case2/Files/insertar.sql
    Log To Console    ${insertar_global}
    Should Be Equal As Strings    ${insertar_global}    None
    
Base consulta por nombre
    [Documentation]     consulta registros
    [Tags]      test_consulta
    Check If Exists In Database    select name from personas2 where name="aaron"
    #${query}=   Set Variable    select name from personas2 where name="aaron"
    #Check Row Count     ${query}     1    operator=GE

Base consulta no existe el nombre
    [Documentation]     consulta registros
    [Tags]      test_consulta_no_existe
    Check If not Exists In Database    select name from personas2 where name="hernan"


Base validar tabla
    [Documentation]     validar si la tabla existe
    [Tags]      test_tabla
    Table Must Exist    personas2


Base contar numero de elementos que existe
    [Documentation]     validar elementos que existen
    [Tags]      test_elementos_existen
    ${query}=    set variable   select * from personas2 where ap="castillo"
    Row Count Is Equal To X    ${query}    4


Base actualizar campo
    [Documentation]     actualizar campo
    [Tags]      test_actualizar
    ${actualizar}=      Execute Sql String    update personas2 set name="nani yurani" where name="yura"
    Log To Console    ${actualizar}
    Should Be Equal As Strings    ${actualizar}    None


Base borrar campos truncate
    [Documentation]     borrar elementos
    [Tags]      test_borrar
    ${delete}=      Execute Sql String    TRUNCATE TABLE personas2;
    Log To Console    ${delete}
    Should Be Equal As Strings    ${delete}    None
    #cuando usamos delete borra los registros, pero no el historial.
    #cuando usamos truncate borra ambos, registro e historial.


Base traer todos los campos
    [Documentation]     consulta todos los registros
    [Tags]      test_todos
    #${todos}=      Execute Sql String    select * from personas2;
    #Log To Console    ${todos}
    #Should Be Equal As Strings    ${todos}    None

    #con la siguiente funcion many, podemos mostrar en pantalla el arreglo completo.
    @{todos}=      query     select * from personas2;
    Log To Console  many @{todos}


*** Keywords ***
