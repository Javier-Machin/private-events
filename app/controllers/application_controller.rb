class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  helper_method :current_user

  def log_in(user)
    session[:user_id] = user.id
    current_user
  end

  def current_user
    @current_user ||= User.find_by(id: session[:user_id])
  end

  def log_out
    session[:user_id] = nil
    @current_user = nil
  end

  def logged_in_user
    if current_user.nil?
      flash[:alert] = "Please log in."
      redirect_to login_url
    end
  end

end
