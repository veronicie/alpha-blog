class SessionsController < ApplicationController

  def new
  end

  def create
    user = User.find_by(email: params[:session][:email].downcase)
    if user && user.authenticate(params[:session][:password])
      session[:user_id] = user.id
      ## session = instance method by which I can acces the session object associated with the user
      ## We can use this session object and store some information about user who we would like to track as logged in -> userr_id
      ## this will allow our logged in users to authenticate once here and then remain signed in for all future request
      flash[:notice] = "Logged in successfully"
      redirect_to user
    else
      flash.now[:alert] = "There was something wrong with your login details"
      render 'new'
    end
  end

  def destroy
    session[:user_id] = nil
    flash[:notice] = "Logged out"
    redirect_to root_path
  end

end 