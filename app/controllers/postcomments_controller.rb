class PostcommentsController < ApplicationController
  def index
    @postcomment = Postcomment.all
  end

  def new
    @post = Post.find(params[:post_id])
    @user = current_user
    @postcomment = Postcomment.new
  end

  def create
    @post = Post.find(params[:post_id])
    @postcomment = @post.postcomments.new(body: params[:postcomment][:body], user_id: current_user.id)
    
    if @postcomment.save
      redirect_to post_path(@post)
    else
      render 'new'
    end
  end

  def show
    @postcomment = Postcomment.find(params[:id])
  end

  def search
  end

  def destroy
    @post = Post.find(params[:post_id])
    @postcomment = @post.postcomment.find(params[:id])
    @postcomment.destroy
    redirect_to post_path @post
  end

  def edit
  end

  def update
  end
end
