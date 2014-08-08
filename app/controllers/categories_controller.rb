class CategoriesController < ApplicationController
  def new 
    @category = Category.new
  end

  def show
    @category = Category.find(params[:id])
    @region = @category.region
    @posts = @category.posts.page(params[:page])
  end
end
