class FriendshipsController < ApplicationController
  def index
    @users = User.all
  end

  def new
    @friend = Friend.create(friend_id: params[:user_id], user_id: current_user.id)
    redirect_to user_path @user 
  end

  def create
    @user = current_user
    @friendship = current_user.friendships.new(friend_id: params[:friend_id])
    @friendship.save
    redirect_to user_path @user
  end

  def destroy
    Friendship.find(params[:id]).destroy
    redirect_to user_path current_user
  end

  def show
    @friends = current_user.friends
  end

  def update
  end
end



