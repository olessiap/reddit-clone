class PostsController < ApplicationController
  layout "posts"

  def index
    p params
    p "@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@"
    @posts = Post.find(params[:subreddit_id]).posts
  end

  def show
    @post = Post.find(params[:id])
  end

  def new
    @post = Post.new
  end

  def create
    @post = Post.new(allowed_params)
    p @post.errors
    p params
    p "@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@"
    if @post.save
      flash[:notice] = "Post successfully created!"
      redirect_to @post
    else
      render :new
    end
  end

  private

  def allowed_params
    params.require(:post).permit(:title, :body).merge(subreddit_id: params[:subreddit_id]) #http://localhost:3000/subreddits/2/posts/new
  end

end
