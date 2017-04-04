Dado(/^que acesso a página principal do Google$/) do
  @page= PesquisarSantanderPage.new
  @page.navegar_ate_home_google
end

Dado(/^efetuo uma busca pelo termo "([^"]*)"$/) do |termo|
  @page.efetuar_busca termo
end

Quando(/^clico no link que possui o termo "([^"]*)"$/) do |termo|
  @page.clicar_link_com_termo termo
end

Então(/^sou direcionado para a página desejada, onde posso visualizar as informações de contato$/) do
  @page.informacoes_contato_visivel?
end
