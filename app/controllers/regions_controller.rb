class RegionsController < ApplicationController
  def index
    @regions = Region.all
  end

  def user
    @user = User.all
  end
  

  def new
    @region = Region.new
  end

  def show
    @region = Region.find(params[:id])
    @categories = @region.categories
  end
end

