class ApplicationController < ActionController::Base
  helper_method :logged_in?
  helper_method :current_user

  def log_in(user)
    user.remember
    cookies.permanent[:remember_token] = user.remember_token
    @current_user = user
  end

  def logged_in?
    !current_user.nil?
  end

  def log_out
    current_user.forget
    cookies.delete(:remember_token)
    @current_user = nil
  end

  def current_user
    if (remember_token = cookies[:remember_token])
      remember_digest = User.generate_digest(remember_token)
      @current_user ||= User.find_by(remember_digest: remember_digest)
    end
  end
end

