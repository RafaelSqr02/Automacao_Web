*** Settings ***
Documentation    Teste de buscar CEP na API 
Resource         ../base/base.robot 



*** Keywords ***

Cenário 01: Acessar o site Saucedemo com User válio
    [Documentation]    Utilizar um User válido para Logar no Sistema
    ...    
    [Tags]    uat    positive    1
    Sleep    1s

Dado que eu seja um user válido para acessar o sistema
    Open Browser    ${URL}    
    Maximize Browser Window

Quando eu inserir minhas credenciais 
    Wait Until Element Is Visible    ${LOGIN}    5s
    Wait Until Element Is Visible    ${SENHA}    5s
    Input Text                       ${LOGIN}   standard_user
    Input Text                       ${SENHA}   secret_sauce
    Sleep    3s
Então espero realizar o Login no sistema
    Click Element                    ${BUTTON}
    Sleep    3s


Cenário 02: Realizar a compra de um Produto
    [Documentation]    Realizar a compra de um prduto
    ...    
    [Tags]    uat    positive    2
    Sleep    1s

Dado que eu esteja logado no sistema
    Wait Until Element Is Visible    ${PRODUCT}
    Sleep    3s

E selecione um produto na tela Home
    Click Element                    ${PRODUCT}
    Sleep    2s

Quando eu ir para o carrinho 
    Wait Until Element Is Visible    ${BUTTONPRODUCT}
    Sleep    2s
    Click Element                   ${BUTTONPRODUCT}
    Click Element                   ${CARRINHO}
    Click Element                   ${CHECKOUT}    
    Input Text                      ${FNAME}    Rafael
    Input Text                      ${LNAME}    Siqueira
    Input Password                  ${ZIP}      24451230
    Click Element                   ${CONTINUE}
    Sleep                           3s

Então devo fechar o pedido    
    Click Element                   ${FINISH}
    Close Browser
