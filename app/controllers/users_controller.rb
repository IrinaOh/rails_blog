class UsersController < ApplicationController
  def index
    @users = User.all
    @user= current_user
  end

  def create
    @user = User.new(user_params)
    if @user.save
      session[:user_id] = @user.id
      flash[:notice] = "Your account was created successfully."
      redirect_to user_path @user
    else
      flash[:alert] = "There was a problem saving your account."
      render 'new'
    end
  end

  def new
    @user = User.new
  end

  def edit
    @user = User.find(params[:id])
  end

  def show
    @user = User.find(params[:id])
    @friends = current_user.friendships
  end

  def update
    @user = User.find(params[:id])
    @user.update_attributes(user_params)
    redirect_to user_path @user
  end

  def destroy
    current_user.destroy
    redirect_to new_user_path
  end

  def search
  end

  private
  #{"utf8"} => '/', "user" => {"fname" =>"Casey", lname => "Stinett"}}
  #params[:user][:fname]
  def user_params
    params.require(:user).permit(:fname, :lname, :email, :password) # now change params[:user] to (user_params)
  end
end

