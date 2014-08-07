class CategoriesController < ApplicationController
  def new 
    @region = Region.find(params[:region_id])
    @category = Category.new
  end
  
  def create
    region = Region.find(params[:region_id])
    category = Category.new(category_params)
    if category.save
      redirect_to [region, category]
    else
      render :new
    end
  end

 def show
   @category = Category.find(params[:id])
   @region = @category.region
 end 
  private
  
  def category_params
    params.
      require(:category).
      permit(:name)
  end
end
