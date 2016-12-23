class SessionsController < ApplicationController
  def new
    
  end

  def create
  	puts "THESE ARE MY PARAMS: #{params.inspect}"
  	@user = User.where(email: params[:email], password: params[:password]).first
  	puts "DID WE GET A USER? #{@user}"
  	if @user
  		session[:user_id] = @user.id 
  		redirect_to user_path @user
  	else
      render 'new' #a better way to redirect_to
  		#redirect_to root_path
  	end
  end

  def destroy
    session[:user_id] = nil
    redirect_to login_path	
  end

  
end
