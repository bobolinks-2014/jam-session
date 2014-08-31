class NeighborhoodsController < ApplicationController
  def show
    slug = params[:neighborhood].split("-").map {|w| w.capitalize}.join(" ")
    @neighborhood = Neighborhood.find_by_name(slug)
  end

  def instruments
    @neighborhood = Neighborhood.find_by(params[:id])
    @instrument = Instrument.find_by_name(params[:instrument])
    @users = User.where(neighborhood_id: params[:neighborhood])
    @user_instruments = UserInstrument.where(instrument_id: @instrument.id)

  end
end

