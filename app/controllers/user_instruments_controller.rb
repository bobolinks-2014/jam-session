class UserInstrumentsController < ApplicationController

  def new
    @user_instrument = UserInstrument.new
  end

  def create
    params[:user_instrument].merge!(user_id: current_user.id)
    @user_instrument = UserInstrument.create(user_instruments_params)
    @neighborhood = current_user.neighborhood.name.downcase.gsub(/\s/,"-")
    redirect_to "/#{@neighborhood}"
  end

  private

  def user_instruments_params
    params.require(:user_instrument).permit(:user_id, :instrument_id, :skill_level, :genre_list)
  end


end
