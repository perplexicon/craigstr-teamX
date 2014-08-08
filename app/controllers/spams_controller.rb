class SpamsController < ApplicationController
  def create
    region = Region.find(params[:region_id])
    post = Post.find(params[:post_id])
    current_user.spam(post)
    redirect_to [region, post.category, post]
  end

  def destroy
    region = Region.find(params[:region_id])
    post = Post.find(params[:post_id])
    current_user.unspam(post)
    redirect_to [region, post.category, post]
  end
end
