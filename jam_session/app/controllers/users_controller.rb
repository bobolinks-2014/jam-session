class UsersController < ApplicationController
  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)
    if @user.save
      session[:user_id] = @user.user.id
      redirect_to root_path
    else
      render 'new'
    end
  end

  def login
    @user = User.find_by_email(params[:user][:email])
      if @user && @user.authenticate(params[:user][:password])
          session[:user_id] = @user.id
      end
      redirect_to root_path
  end

  def logout
    session[:user_id] = nil
    redirect_to root_path
  end

private

  def user_params
    params.require(:user).permit(:first_name, :last_name, :email, :password, :password_confirmation)
  end
end
