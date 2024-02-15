class ArticlesController < ApplicationController 
  def index
    @articles = Article.order(:id)
  end

  def show
    @article = Article.find(params[:id])
  end

  def new
    @article = Article.new
  end

  def create
		@article = Article.new(article_params)
		# @article.title = params[:title]                                   #--- eto ung equivalent ng article_params manually
		# @article.body = params[:body]
		# @article.author_name = params[:author_name]
    # @article.co_author_name = params[:co_author_name]   

		if @article.save
      flash[:notice] = "Article successfully created"
			redirect_to articles_path
		else
			render :new
		end
  end

  def edit                                                    #----------------------------edit-------------------------------#
    @article = Article.find(params[:id])
  end

  def update                                                  #----------------------------update-------------------------------#
    @article = Article.find(params[:id])

    if @article.update(article_params)
      flash[:notice] = "Article successfully edited"
      redirect_to articles_path
    else
      render :edit, status: :unprocessable_entity
    end
  end

  def destroy                                                  #----------------------------destroy-------------------------------#
    @article = Article.find(params[:id])
    @article.destroy
    flash[:notice] = "Article successfully destroyed"
    redirect_to articles_path, status: :see_other
  end

  private
    def article_params
      params.require(:article).permit(:title, :body, :author_name, :co_author_name)
    end
	
end
