# Generated `$ bin/rails generate controller articles`
class ArticlesController < ApplicationController

  # The usual practice is to place it as the first method in the controller.
  # Let's do it:
  def index
    @articles = Article.all
  end

  def show
    @article = Article.find(params[:id])
  end

  def new
    @article = Article.new
  end

  def create
    # create article here
    @article = Article.new(article_params)

    if @article.save # if it saves succesfully ...
      redirect_to @article #... show page
    else
      render 'new' # ... else show the form again
    end
  end
  
  private
    def article_params
      params.require(:article).permit(:title, :text)
    end

end
