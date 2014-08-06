class PostsController < ApplicationController
  def new
    @region = Region.find(params[:region_id])
    @category = Category.find(params[:category_id])
    @post = Post.new
  end

  def create
    region = Region.find(params[:region_id])
    post_params_w_region = post_params.merge(region_id: region.id)
    category = Category.find(params[:category_id])
    post = category.posts.new(post_params_w_region)

    if post.save
      redirect_to [region, category]
    else
      render :new
    end
  end

  def show
    @region = Region.find(params[:region_id])
    @category = Category.find(params[:category_id])
    @post = @category.posts.find(params[:id])
  end

  def edit
    @region = Region.find(params[:region_id])
    @category = Category.find(params[:category_id])
    @post = Post.find(params[:id])
  end

  def update
    region = Region.find(params[:region_id])
    category = Category.find(params[:category_id])
    full_post_params = post_params.merge(region_id: region.id).merge(category_id: category.id)
    post = Post.find(params[:id])

    if post.update(full_post_params)
      redirect_to [region, category, post]
    else
      render :edit
    end
  end

  def destroy
    category = Category.find(params[:category_id])
    post = category.posts.find(params[:id])
    post.destroy

    redirect_to [category.region, category]
  end

  private

  def post_params
    params.
      require(:post).
      permit(:name, :body).
      merge(user_id: current_user.id)
  end
end
