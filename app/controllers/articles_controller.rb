class ArticlesController < ApplicationController
  def index
    @articles = Article.all
  end

  def show
    @article = Article.find params[:id]
  end

  def edit
    @article = Article.find params[:id]
  end

  def new
    @articles = Article.all
  end

    def create
      article = Article.create article_params
      redirect_to article
    end

    def update
      article = Article.find params[:id]
      article.update article_params
      redirect_to article
    end




    private
    def article_params
      params.require(:article).permit(:name)
    end
end
