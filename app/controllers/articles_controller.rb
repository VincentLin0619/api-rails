class ArticlesController < ApplicationController
  def index
    articles = Article.all
    render json: serializer.new(articles), status: :ok
  end

  def create
  end

  def show
  end

  def update
  end

  def destroy
  end

  private

  def serializer
    ArticleSerializer
  end

end
