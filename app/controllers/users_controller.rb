class UsersController < ApplicationController

  def show
    @user = User.find(params[:id])
    @comment = JamSesh.new
    @jams = @user.get_partners
    @messages = @user.get_messages
  end

  def new
    @user = User.new
    @neighborhoods = Neighborhood.all
  end

  def create
    @user = User.new(user_params)
    if @user.save
      session[:user_id] = @user.id
      @neighborhood = @user.neighborhood.name.downcase.gsub(/\s/,"-")
      redirect_to "/#{@neighborhood}"
    else
      @neighborhoods = Neighborhood.all
      render 'new'
    end
  end

  def edit
    @user = User.find(params[:id])
  end

  def update
    @user = User.find(params[:id])

    if @user.update(user_params)
      @neighborhood = @user.neighborhood
      redirect_to neighborhood_path(@neighborhood)
    else
      render 'edit'
    end
  end

private

  def user_params
    params.require(:user).permit(:first_name, :last_name, :email, :password, :password_confirmation, :tag_list, :neighborhood_id, :remote_image_url , :description, :image)
  end
end
