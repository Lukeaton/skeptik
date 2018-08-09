class ArticlesController < ApplicationController
  def index
    @articles = Article.all
  end

  def show
    @article = Article.find params[:id]
    if @article.collections.present?
      @collections = @article.collections.where(user_id: @current_user)
    # else
    #    @collection = Collection.create user_id: @current_user.id, article_id: @article.id, title: "default "
    end
    # raise "hell"
  end

  def like
    article = Article.find params[:id]
    if @current_user.collections.present?
      unless @current_user.collections.first.articles.include? article
        @current_user.collections.first.articles << article
      end
    else
      collection = Collection.create user_id: @current_user.id, article_id: article.id, title: "My Collection "
      collection.articles << article
      @current_user.collections << collection
    end
    redirect_to article
  end

  def unlike
    article = Article.find params[:id]
    @current_user.collections.first.articles.delete(article)
    redirect_to article
  end

  def add
    @article = Article.new
  end

  def edit
    @article = Article.find params[:id]
    unless @current_user.articles.include?(@article)
      redirect_to root_path
    else
    end
  end

  def new
    @article = Article.all
  end

  def create
    article = Article.create article_params
    article.user_id = @current_user.id
    article.save
    redirect_to article
  end

  def update
    article = Article.find params[:id]
    article.update article_params
    redirect_to article
  end




    private
    def article_params
      params.require(:article).permit(:name, :title, :story, :image)
    end
end
