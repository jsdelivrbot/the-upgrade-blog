class SessionsController < ApplicationController
  
  def new
  end
  
  def create
    user = User.where(email: params[:email]).first
    if user && user.authenticate(params[:password])
      session[:user_id] = user.id
      redirect_to posts_path
    else
      flash[:error] = "Email or password is incorrect"
      redirect_to login_path
    end
  end
  
  def destroy
    session[:user_id] = nil
    redirect_to login_path, notice: "Logged out!"
  end

end