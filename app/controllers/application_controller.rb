class ApplicationController < ActionController::Base
  helper_method :logged_in?
  helper_method :current_user

  def log_in(user)
    session[:user_id] = user.id
  end

  def remember(user)
    user.remember
    cookies.permanent.signed[:user_id] = user.id
    cookies.permanent[:remember_token] = user.remember_token
  end
  
  def log_out
    session[:user_id] = nil
    @current_user = nil
  end

  def forget
    current_user.forget if logged_in?
    cookies.delete(:remember_token)
    cookies.delete(:user_id)
  end

  def logged_in?
    !current_user.nil?
  end

  def current_user
    if session[:user_id]
      @current_user ||= User.find(session[:user_id])
    elsif cookies[:user_id] 
      user = User.find(cookies.signed[:user_id])
      if user && user.validate_token(cookies[:remember_token])
        @current_user = user
        log_in(user)
      end
      @current_user = nil
    end
  end
end

