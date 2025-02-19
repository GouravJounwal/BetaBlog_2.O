class ArticlesController < ApplicationController

    before_action :set_article, only: [:show, :edit, :update, :destroy]

    def index
        @article = Article.all
    end
    def show
        #@article = Article.find(params[:id])
    end
    def new
        @article = Article.new
    end

    def edit
       # @article = Article.find(params[:id])
    end
    def create
        @article = Article.new(article_params)
        if @article.save
            flash[:notice] = "Article was successfully created"
            redirect_to @article
        else
            render 'new'
        end
    end

    def destroy
       # @article = Article.find(params[:id])
        @article.destroy 
        redirect_to articles_path
    end

    def update
       # @article = Article.find(params[:id])
        if @article.update(article_params )
            flash[:notice] = "Article was successfully updated"
            redirect_to @article
        else
            render 'edit'
        end
    end

    private
    def set_article
        @article = Article.find(params[:id])
    end

    def article_params
        params.require(:article).permit(:title, :discription)
    end

end