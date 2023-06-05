*** Settings ***
Documentation    Navegar 
...              Para que consiga navegar pela página até o link desejado
...              Sendo um usuario 
...              Quero localizar o elemento desejado

Resource   ../resources/KeyWords/kwStepsNavegacao.robot
Resource   ../resources/Page_Objects/typiCodeScreen.robot

Suite Setup       Abrir Navegador
Suite Teardown    Fechar Navegador

*** Variables ***
${id}    ${id_json}             

*** Test Case ***
Navegar localizar e validar link /albums/1/photos
    [Tags]    Link_photos
    Dado que acesso o endereco
    E navego ate o menu Guide
    E navego ate o link /albums/1/photos
    Quando abro o link e capturo a tela
    Entao valido o objeto com ${id}