class ArticlesController < ApplicationController
  
  before_filter :authenticate_user!, :only => [:new, :create]
  
  def new
  end
  
  def index
    @article = Article.all
  end
  
  def edit
    @article = Article.find(params[:id])
  end
  
  def destroy
    Article.find(params[:id]).destroy
    #redirect_to :back #just go back
    redirect_to articles_path # Alternative with redirect to articles list
  end
  
  def update
    @article = Article.find(params[:id])
    
    if @article.update(article_params)
      redirect_to @article
    else
      render action: 'edit'
    end
  end
  
  def show
    @article = Article.find(params[:id])
  end
  
  def create
    @article = Article.new(article_params)
    if @article.save
      redirect_to @article
    else
      render action: 'new'
    end
  end
  
  private
  
  def article_params
    params.require(:article).permit(:title, :text)
  end
  
end
