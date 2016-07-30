class PostsController < ApplicationController
  before_action :find_post, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_user!, except: [:index, :show]
  
  def index
    @posts = Post.all.paginate(page: params[:page], per_page: 4)
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

  def show

  end

  def edit
  end

  def update
    if @post.update post_params
      redirect_to @post, notice: "updated post"
    else
      render 'edit'
    end
  end

  def destroy
    @post.destroy
    redirect_to posts_path
  end

  private

  def post_params
    params.require(:post).permit(:title, :date, :content, :slug)
  end

  def find_post
    @post = Post.friendly.find(params[:id])
  end
end
