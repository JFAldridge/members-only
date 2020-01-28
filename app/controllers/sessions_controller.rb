class SessionsController < ApplicationController
  def new
  end

  def create
    user = User.find_by(email:params[:session][:email])
    if user && user.authenticate(params[:session][:password])
      log_in(user)
      flash[:success] = "Logged in!"
      redirect_to root_url
    else
      flash[:warning] = "Invalid user/password combination" 
      redirect_to root_url
    end
  end

  def destroy
    session[:user_id] = nil
    redirect_to root_url
  end
end
