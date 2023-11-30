*** Settings ***
Documentation    Assertions para o GET de buscar CEP na API 
Resource         ../base/base.robot


*** Test Cases ***

Cenário 01: Acessar o site Saucedemo com User válio
    Dado que eu seja um user válido para acessar o sistema
    Quando eu inserir minhas credenciais 
    Então espero realizar o Login no sistema

Cenário 02: Realizar a compra de um Produto
    Dado que eu esteja logado no sistema
    E selecione um produto na tela Home
    Quando eu ir para o carrinho 
    Então devo fechar o pedido