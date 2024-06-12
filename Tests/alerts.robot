*** Settings ***
Documentation    Demo de las Varibles
Library     SeleniumLibrary

*** Variables ***
${url} =     https://testpages.herokuapp.com/styled/alerts/alert-test.html
${browser} =     chrome



*** Test Cases ***
Demo uno alerts
    [Documentation]    Pruebas para alerts
    [Tags]    test_uno
    Open Browser        ${url}        ${browser}
    Maximize Browser Window
    title should be    Test Page For JavaScript Alerts
    set selenium implicit wait    10
    set selenium speed    .8s

    wait until page contains    Alert Box Examples

    # click on accept button
    click button    id=alertexamples
    handle alert    accept

    #click on accep button from promt box
    click button    id=confirmexample
    handle alert    accept


    #click on dismiss button from promt box
    click button    id=confirmexample
    handle alert    dismiss


    # anothe way to click on accept button
    click button    id=alertexamples
    alert should be present    I am an alert box!



    close browser
*** Keywords ***
