class PostsController < ApplicationController
  def index
  end

  def new
    @post = Post.new
  end

  def create
    @post = Post.new post_params

    if @post.save
      redirect_to @post, notice: "Post created"
    else
      render 'new', notice: "Unable to save post"
    end
  end

  private

  def post_params
    params.require(:post).permit(:title, :date, :content)
  end
end
