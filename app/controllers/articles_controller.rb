class ArticlesController < ApplicationController
  before_action :set_article, only: [:show,:edit,:update,:destory]
  before_action :authenticate_user!, except: [:show,:index]
  def index
    @article = Article.page(params[:page]).per(10).order(created_at: :desc)
  end
  def new 
    @article = Article.new
  end
  def create
    @article = Article.new(article_params)
    @article.user = current_user
    if @article.save
      redirect_to article_url(@article)
    else
      render 'new'
    end
  end
  def show 
  end 
  def edit
  end 
  def update
    @article.user = current_user 
    if @article.update(article_params) && @article.user == current_user
      redirect_to article_url(@article)
    else
      render 'new'
    end
  end 
  def destroy 
    if @article.destroy
      redirect_to article_url
    else
      redirect_ back(fallback_location: article_url(@article))
    end
  end
  private
  def set_article 
    @article = Article.find(params[:id])
  end
  def article_params 
    params.require(:article).permit(:title, :content)
  end
end
