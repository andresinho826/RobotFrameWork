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




*** Keywords ***
