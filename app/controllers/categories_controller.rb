class CategoriesController < ApplicationController
  def new
    @region = find_region
    @category = Category.new
  end

  def create
    region = find_region
    category = region.categories.new(category_params)

    if category.save
      redirect_to [region, category]
    else
      render :new
    end
  end

  def show
    @region = find_region
    @category = @region.categories.find(params[:id])
    @posts = @category.posts
  end

  private

  def find_region
    Region.find(params[:region_id])
  end

  def category_params
    params.
      require(:category).
      permit(:name)
  end
end
