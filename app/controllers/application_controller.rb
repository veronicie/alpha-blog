class ApplicationController < ActionController::Base

  helper_method :current_user, :logged_in?
  def current_user
    @current_user ||= User.find(session[:user_id]) if session[:user_id]
    ## its the same like
    # if session[:user_id]
    #   User.find(session[:user_id])
  end

  def logged_in?
    !!current_user
    ## convert current_user into boolean
    # if curren_user => true
    # else => false
  end

end