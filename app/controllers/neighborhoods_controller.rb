class NeighborhoodsController < ApplicationController

  def instruments
    
    @neighborhood = Neighborhood.find(params[:neighborhood].to_i)
   
    @instrument = Instrument.find_by_name(params[:instrument])
    @users = User.where(neighborhood_id: @neighborhood.id)
    users_array = UserInstrument.where(instrument_id: @instrument.id).map { |instrument| instrument.user }
    @user_instruments = users_array.select! {|user| user.neighborhood_id == @neighborhood.id }

    # compare @users and @user_instruments
  end

  def show
    slug = params[:neighborhood].split("-").map {|w| w.capitalize}.join(" ")
    @neighborhood = Neighborhood.find_by_name(slug)
  end

end

