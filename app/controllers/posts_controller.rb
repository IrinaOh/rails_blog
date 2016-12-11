class PostsController < ApplicationController
  def index
    @posts = Post.all
  end

  def create
    @post = Post.new(params[:post]) #creates new post
    @post.save #saves this new post

    redirect_to @post #
  end

  def new

  end

  def edit
  end

  def show
    @post = Post.find(params[:id]) #defines the @post and finds specific post
  end

  def update
  end

  def destroy
    
  end

  def search
  end
end
