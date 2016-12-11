class PostsController < ApplicationController
  def index
    @posts = Post.all.order('created_at DESC') #displays all posts created in order starting with the latest post
  end

  def create
    @post = Post.new(params[:post]) #creates new post
    @posts = Post.all
    if @post.save #saves this new post
      redirect_to posts_path  #redirects to another page with all earlier created posts
    else 
      render "new" #redirects to new.html.erb in post views
    end
  end

  def new
    @post = Post.new(params[:post])
  end

  def edit
    @post = Post.find(params[:id])
  end

  def show
    @post = Post.find(params[:id]) #defines the @post and finds specific post
  end

  def update
    @post = Post.find(params[:id])
    @post.update_attributes(params[:post])
    flash[:notice] = "Your post was updated successfully!"
    redirect_to posts_path @post
  end

  def destroy
    @post = Post.find(params[:id])
    @post.destroy
    flash[:notice] = "Your post was deleted successfully."
    redirect_to posts_path 
  end

  def search
  end
end
