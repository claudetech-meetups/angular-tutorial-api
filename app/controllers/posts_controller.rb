class PostsController < ApplicationController
  before_action :find_post, only: [:show]

  def index
    @posts = Post.all
  end

  def show
  end

  def create
    @post = Post.new(post_params)
    if @post.save
      render @post
    else
      render @post.errors
    end
  end

  private
  def find_post
    @post = Post.find(params[:id])
  end

  def post_params
    params.require(:post).permit(:title, :content, :category_id)
  end
end
