class SpamsController < ApplicationController
  def create
    region = find_region
    post = find_post
    current_user.flag(post)

    redirect_to [region, post.category, post]
  end

  def destroy
    region = find_region
    post = find_post
    current_user.unflag(post)
    redirect_to [region, post.category, post]
  end

  private

  def find_region
    Region.find(params[:region_id])
  end

  def find_post
    Post.find(params[:post_id])
  end
end
