class PagesController < ApplicationController
  def home
    @article = Article.last
    # Renderiza a página home.html.erb
  end

  def contato
    # Aqui você pode processar o formulário
    nome = params[:nome]
    telefone = params[:telefone]
    mensagem = params[:mensagem]

    # Exemplo: apenas exibe no console por agora
    puts "Novo contato: #{nome}, #{telefone}, #{mensagem}"

    # Redireciona com mensagem de sucesso
    flash[:notice] = "Obrigada pelo contato! Entrarei em contato em breve."
    redirect_to root_path
  end
end
