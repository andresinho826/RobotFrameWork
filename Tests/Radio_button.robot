*** Settings ***
Documentation    Demo de las Varibles
Library     SeleniumLibrary

*** Variables ***
${url} =     https://qa-automation-practice.netlify.app/radiobuttons
${browser} =     chrome
${t} =   2




*** Test Cases ***
Demo radio button
    [Documentation]    Pruebas de radio button
    [Tags]    test_uno
    open browser    ${url}      ${browser}
    sleep    ${t}

    title should be    QA Practice | Learn with RV
    sleep    ${t}

    select radio button    materialExampleRadios        radio-button1
    sleep    ${t}
    select radio button    materialExampleRadios        radio-button3
    sleep    ${t}
    # se puede mapear el locator asi: ( forma 1)
    select radio button    materialExampleRadios        radio-button2
    # tambien se puede mapear asi con su xpath: (forma 2)
    click button    //*[@id='radio-button3']



*** Keywords ***
