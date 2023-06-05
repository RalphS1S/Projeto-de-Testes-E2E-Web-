*** Settings ***
Resource    ../base.robot
Resource    ../Page_Objects/typiCodeScreen.robot


*** Keywords ***
Dado que acesso o endereco
    Go To    ${BASE_URL}
    Wait Until Element Is Visible    ${nome_titulo}    timeout=60    error=None
    Title Should Be    ${tituloAPI}    message=None

E navego ate o menu Guide
    Wait Until Element Is Visible    ${menu_guide}    timeout=60    error=None
    Click Element    ${menu_guide}

    ${url}=    Get Location

    Should Be Equal As Strings    ${url}    ${URL_Guide}

E navego ate o link /albums/1/photos
    Scroll Page To Location    0    1000
    Wait Until Element Is Visible    ${album_photos}    timeout=None    error=None
    Click Element    ${album_photos}    modifier=False

    ${url}=    Get Location

Quando abro o link e capturo a tela
    Wait Until Element Is Visible    ${id_dtbruto}    timeout=None    error=None
    Click Element    ${id_dtbruto}    modifier=False

    Sleep    2s    reason=None

    Wait Until Element Is Visible    ${btn_copy}
    Click Element    ${btn_copy}

    Capture Page Screenshot

Entao valido o objeto com ${id}
    ${response}=    Get Text    ${json_data}
    Log    ${response}

    Create File    ${json_file}    ${response}

    ${file}=    Load Json From File    ${EXECDIR}${/}anexos${/}file.json
    Log    ${file}

    ${value}=    Get Value From Json    ${file}    $[5]
    Log To Console    /n Conteúdo JSON: ${value}
    ${id}=    Get Value From Json    ${value}    $..id
    ${id_value}=    Get From List    ${id}    0

    Should Be Equal As Integers    ${id_value}    ${id_json}

    Remove File    ${json_file}


End Test
