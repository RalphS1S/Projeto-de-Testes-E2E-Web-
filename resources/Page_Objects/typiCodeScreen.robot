*** Comments ***
Documentation    Representacao do padrao Page Object para Robot Framework


*** Variables ***
#Tela inicial
${nome_titulo}      //span[contains(text(), '{JSON} Placeholder')]
${menu_guide}       //*[@class='mr-4 no-underline' and contains(text(), 'Guide')]
${tituloAPI}        JSONPlaceholder - Free Fake REST API

#Tela Guide
${album_photos}     //a [contains(text(), '/albums/1/photos')]
${URL_Guide}        https://jsonplaceholder.typicode.com/guide/
${id_dtbruto}       id=rawdata-tab
${btn_copy}         //button [@class='btn copy']
${json_data}        //pre [@class='data']

#JSON
${json_doc}         ${EXECDIR}${/}anexos${/}file.json
${json_file}        ${EXECDIR}\\anexos\\file.json
${id_json}          6
