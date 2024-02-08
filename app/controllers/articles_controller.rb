class ArticlesController < ApplicationController 
  def index
    @articles = Article.all
  end

  def show
    @article = Article.find(params[:id])
  end

  def new
    # @article = Article.new
  end

  def create
		@article = Article.new
		@article.title = params[:title]
		@article.body = params[:body]
		@article.author_name = params[:author_name]

		if @article.save
			redirect_to articles_path
		else
			render :new
		end
  end
	
end
