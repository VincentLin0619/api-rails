class ArticlesController < ApplicationController
  def index
    render json: Article.all, status: :ok
  end

  def create
  end

  def show
  end

  def update
  end

  def destroy
  end
end
