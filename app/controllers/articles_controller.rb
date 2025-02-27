class ArticlesController < ApplicationController
  def index
    @articles = Article.all # Lista todos os artigos
  end

  def show
    @article = Article.find(params[:id]) # Mostra um artigo específico
  end
end
