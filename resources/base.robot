*** Settings ***
Library     SeleniumLibrary
Library     String
Library     JSONLibrary
Library     OperatingSystem
Library     Collections


*** Variables ***
${BASE_URL}     https://jsonplaceholder.typicode.com/


*** Keywords ***
Abrir Navegador
    Open Browser    about:blank    FireFox    #options=add_experimental_option('excludeSwitches', ['enable-logging'])
    Set Window Size    1440    900
    Maximize Browser Window

Fechar Navegador
    Sleep    5
    Close Browser

End Test
    Capture Page Screenshot    #filename=ITCMD-screenshot-{index.png}

Scroll Page To Location
    [Arguments]    ${x_location}    ${y_location}
    Execute JavaScript    window.scrollTo(${x_location},${y_location})
