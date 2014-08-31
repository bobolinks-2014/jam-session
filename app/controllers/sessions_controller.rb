class SessionsController < ApplicationController

  def login
    user = User.find_by_email(params[:user][:email])
    if user && user.authenticate(params[:user][:password])
      session[:user_id] = user.id
      @neighborhood = user.neighborhood.name.downcase.gsub(/\s/,"-")
      redirect_to "/#{@neighborhood}"
    else
      redirect_to root_path
    end
  end

  def logout
    session[:user_id] = nil
    redirect_to root_path
  end

end
