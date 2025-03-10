class PagesController < ApplicationController
  def home
    # Renderiza a página home.html.erb
  end

  def contato
    # Processa os dados do formulário
    nome = params[:nome]
    endereco = params[:endereco]
    telefone = params[:telefone]
    email = params[:email]
    mensagem = params[:mensagem]

    # Exibe no console para depuração
    puts "Novo contato: #{nome}, #{endereco}, #{telefone}, #{email}, #{mensagem}"

    # Valida os campos obrigatórios
    if nome.present? && telefone.present? && email.present?
      # Aqui você pode adicionar lógica para salvar os dados (ex.: em um banco de dados ou enviar e-mail)
      render json: { success: true, message: "Obrigada pelo contato! Entrarei em contato em breve." }
    else
      render json: { success: false, error: "Por favor, preencha todos os campos obrigatórios (Nome, Telefone, E-mail)." }, status: :unprocessable_entity
    end
  end

  def guia
    email = params[:email]
    puts "E-mail capturado: #{email}" # Aqui você pode salvar ou enviar o guia
    flash[:notice] = "Guia enviado para seu e-mail! Verifique sua caixa de entrada."
    redirect_to root_path
  end
end
