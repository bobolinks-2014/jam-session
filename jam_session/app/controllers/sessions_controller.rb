class SessionsController < ApplicationController

  def login
    @user = User.find_by_email(params[:user][:email])
    if @user && @user.authenticate(params[:user][:password])
      session[:user_id] = @user.id
      p "session has been set"
    end
    redirect_to root_path
  end

  def logout
    session[:user_id] = nil
    redirect_to root_path
  end

end
