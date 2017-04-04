#language: pt
#encoding: utf-8

Funcionalidade: Pesquisa por Santander no Google e visualiza as informações da central de atendimento

Esquema do Cenário: validar se as informações da central de atendimento do Santander são exibidas corretamente quando é efetuada um pesquisa pelo termo Santander no Google
  Dado que acesso a página principal do Google
  E efetuo uma busca pelo termo "<TERMO>"
  Quando clico no link que possui o termo "<TERMO>"
  Então sou direcionado para a página desejada, onde posso visualizar as informações de contato
    Exemplos:
      |   TERMO   |
      | Santander |
