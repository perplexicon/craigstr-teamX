class PostsController < ApplicationController
  def show
    @region = Region.find(params[:region_id])
    @post = @region.posts.find(params[:id])
  end
end
