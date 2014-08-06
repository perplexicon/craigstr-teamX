class CategoriesController < ApplicationController
  def new 
    @category = Category.new
  end

  def show
    @region = Region.find(params[:id])
  end
end
