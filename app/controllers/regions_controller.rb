class RegionsController < ApplicationController
  def index
    @regions = Region.all
  end

  def new
    @region = Region.new
  end

  def show
    @region = Region.find(params[:id])
  end
end

