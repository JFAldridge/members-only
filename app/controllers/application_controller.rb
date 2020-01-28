class ApplicationController < ActionController::Base
  helper_method :logged_in?
  helper_method :current_user

  def log_in(user)
    session[:user_id] = user.id
  end

  def logged_in?
    !current_user.nil?
  end

  def log_out
    session[:user_id] = nil
    @current_user = nil
  end

  def current_user
    if (session[:user_id])
      @current_user ||= User.find(session[:user_id])
    else
      @current_user = nil
    end
  end
end

