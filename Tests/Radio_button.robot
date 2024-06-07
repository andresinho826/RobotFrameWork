*** Settings ***
Documentation    Demo de las Varibles
Library     SeleniumLibrary

*** Variables ***
${url} =     https://qa-automation-practice.netlify.app/radiobuttons
${urldos} =     https://qa-automation-practice.netlify.app/checkboxes
${urltres} =     https://qa-automation-practice.netlify.app/dropdowns

${browser} =     chrome





*** Test Cases ***
Demo radio button
    [Documentation]    Pruebas de radio button
    [Tags]    test_uno
    open browser    ${url}      ${browser}
    maximize browser window
    
    # implicit wait
    set selenium implicit wait    10

    title should be    QA Practice | Learn with RV
    #element attribute value should be    Radio buttons

    select radio button    materialExampleRadios        radio-button1
    select radio button    materialExampleRadios        radio-button3
    
    # se puede mapear el locator asi: ( forma 1)
    select radio button    materialExampleRadios        radio-button2
    # tambien se puede mapear asi con su xpath: (forma 2)
    click button    //*[@id='radio-button3']
    #click button    css=#radio-button3
    close browser

Demo checkBox
    [Documentation]    Pruebas de checkbox
    [Tags]    test_dos
    open browser    ${urldos}      ${browser}
    maximize browser window
    
    # implicit wait
    set selenium implicit wait    10

    title should be    QA Practice | Learn with RV
    #element attribute value should be    Checkboxes

    click button    //*[@id='checkbox1']
    click button    css=#checkbox2
    click button    //*[@id='checkbox3']
    click button    //*[@class='btn btn-primary']

    close browser


Demo select combo Box (dropdown)
    [Documentation]    Pruebas de combo box
    [Tags]    test_tres
    open browser    ${urltres}      ${browser}
    maximize browser window

    # implicit wait
    set selenium implicit wait    10

    title should be    QA Practice | Learn with RV
    #element should be enabled    Simple Dropdown
    #element attribute value should be    Simple Dropdown

    select from list by index    dropdown-menu        20

    #element attribute value should be    Multi-Level Dropdown

    click button    id=multi-level-dropdown-btn

    # pasar el mouser sobre
    execute javascript      window.scrollTo(0,200)
    sleep    5
    mouse over      //a[contains(text(),'Hover me for more options')]
    mouse over      //a[contains(text(),'Even More..')]
    mouse over      //a[contains(text(),'another level')]
    element should be visible   //a[@href='#4th-level-1']
    element should be visible   //a[@href='#4th-level-2']
    element should be visible   //a[@href='#4th-level-3']

    #click button    //a[@href='#4th-level-1']

    close browser

*** Keywords ***
