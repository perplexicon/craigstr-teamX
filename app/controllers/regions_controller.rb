class RegionsController < ApplicationController
  def new
    @region = Region.new
  end
end
