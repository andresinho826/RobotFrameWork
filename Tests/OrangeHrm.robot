*** Settings ***
Documentation    Demo de las Varibles
Library     SeleniumLibrary

*** Variables ***
${url} =     https://opensource-demo.orangehrmlive.com/web/index.php/auth/login
${browser} =     chrome



*** Test Cases ***
Login uno
    [Documentation]    Validando user & pass incorrect
    [Tags]    login_uno
    Open Browser        ${url}        ${browser}
    Maximize Browser Window
    title should be    OrangeHRM
    set selenium implicit wait    10
    set selenium speed    .4s

    #Username : Admin
    #Password : admin123

    ${user} =    set variable    Andres
    ${pass} =   set variable    123456

    input text    username      ${user}
    input password    password  ${pass}
    click button    xpath=//button

    wait until element is visible    xpath=//p[contains(@class, 'oxd-text oxd-text--p oxd')]
    log to console    primer error encontrado OK
    wait until page contains    Invalid credentials
    log to console    Error esperado ok = Invalid credentials

    #close all browsers
    close browser

Login dos
    [Documentation]    Validando user OK & pass incorrect
    [Tags]    login_dos
    Open Browser        ${url}        ${browser}
    Maximize Browser Window
    title should be    OrangeHRM
    set selenium implicit wait    10
    set selenium speed    .4s

    #Username : Admin
    #Password : admin123

    ${user} =    set variable    Admin
    ${pass} =   set variable    123456

    input text    username      ${user}
    input password    password  ${pass}
    click button    xpath=//button

    wait until element is visible    xpath=//p[contains(@class, 'oxd-text oxd-text--p oxd')]
    log to console    segundo error encontrado OK
    wait until page contains    Invalid credentials
    log to console    Error esperado ok = Invalid credentials

    #close all browsers
    close browser

Login tres
    [Documentation]    Validando user incorrect & pass OK
    [Tags]    login_tres
    Open Browser        ${url}        ${browser}
    Maximize Browser Window
    title should be    OrangeHRM
    set selenium implicit wait    10
    set selenium speed    .4s

    #Username : Admin
    #Password : admin123

    ${user} =    set variable    Andresaaaa
    ${pass} =   set variable    admin123

    input text    username      ${user}
    input password    password  ${pass}
    click button    xpath=//button

    wait until element is visible    xpath=//p[contains(@class, 'oxd-text oxd-text--p oxd')]
    log to console    tercer error encontrado OK
    wait until page contains    Invalid credentials
    log to console    Error esperado ok = Invalid credentials

    #close all browsers
    close browser

Login cuarto
    [Documentation]    Validando user vacio & pass OK
    [Tags]    login_cuatro
    Open Browser        ${url}        ${browser}
    Maximize Browser Window
    title should be    OrangeHRM
    set selenium implicit wait    10
    set selenium speed    .4s

    #Username : Admin
    #Password : admin123

    ${user} =    set variable
    ${pass} =   set variable    admin123

    input text    username      ${user}
    input password    password  ${pass}
    click button    xpath=//button

    wait until element is visible    //span[contains(@class, 'oxd-text oxd-text--span')]
    log to console    cuarto error encontrado OK
    wait until page contains    Required
    log to console    Error esperado ok = Required

    #close all browsers
    close browser

Login cinco
    [Documentation]    Validando user ok & pass vacio
    [Tags]    login_cinco
    Open Browser        ${url}        ${browser}
    Maximize Browser Window
    title should be    OrangeHRM
    set selenium implicit wait    10
    set selenium speed    .4s

    #Username : Admin
    #Password : admin123

    ${user} =    set variable   Admin
    ${pass} =   set variable

    input text    username      ${user}
    input password    password  ${pass}
    click button    xpath=//button

    wait until element is visible    //span[contains(@class, 'oxd-text oxd-text--span')]
    log to console    cinco error encontrado OK
    wait until page contains    Required
    log to console    Error esperado ok = Required

    #close all browsers
    close browser

Login seis
    [Documentation]    Validando user vacio & pass vacio
    [Tags]    login_seis
    Open Browser        ${url}        ${browser}
    Maximize Browser Window
    title should be    OrangeHRM
    set selenium implicit wait    10
    set selenium speed    .4s

    #Username : Admin
    #Password : admin123

    ${user} =    set variable
    ${pass} =   set variable

    input text    username      ${user}
    input password    password  ${pass}
    click button    xpath=//button

    wait until element is visible    //span[contains(@class, 'oxd-text oxd-text--span')]
    log to console    cinco error encontrado OK
    wait until page contains    Required
    log to console    Error esperado ok = Required

    #close all browsers
    close browser



*** Keywords ***
