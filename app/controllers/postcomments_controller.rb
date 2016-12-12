class PostcommentsController < ApplicationController
  def index
    @postcomment = Postcomment.all
  end

  def new
    @post = Post.find(params[:post_id])
    @postcomment = Postcomment.new
  end

  def create
    @post = Post.find(params[:post_id])
    @postcomment = @post.postcomments.new(params[:postcomment])
    @postcomment.user = current_user
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
  end

  def edit
  end

  def update
  end
end
