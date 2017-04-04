class PesquisarSantanderPage
	include Rack::Test::Methods
  include Capybara

  def navegar_ate_home_google
    visit 'http://www.google.com.br/'
  end

  def efetuar_busca(termo)
    fill_in "lst-ib", with: termo
  end

  def clicar_link_com_termo(termo)
    click_link termo, match: :first
    sleep 5
  end

  def informacoes_contato_visivel?
    fail "Não foi possível encontrar as informações de contato" unless has_content? "Central de Atendimento"
  end
end
