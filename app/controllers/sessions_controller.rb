class SessionsController < ApplicationController
  def new
  end

  def create
  	puts "THESE ARE MY PARAMS: #{params.inspect}"
  	@user = User.where(fname: params[:fname], password: params[:password]).first
  	puts "DID WE GET A USER? #{@user}"
  	if @user
  		session[:user_id] = @user.id 
  		redirect_to user_path @user
  	else
  		redirect_to login_path
  	end
  end

  def destroy
  	
  end
end
