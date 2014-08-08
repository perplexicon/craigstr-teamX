class RegionsController < ApplicationController
  def index
    @regions = Region.all
  end

  def new
    @region = Region.new
  end

  def show
    @region = find_region
    @categories = @region.categories
  end

  def create
    @region = Region.new(region_params)

    if @region.save
      redirect_to @region
    else
      render :new
    end
  end

  private

  def region_params
    params.
      require(:region).
      permit(:name)
  end

  def find_region
   Region.find(params[:id])
  end
end
