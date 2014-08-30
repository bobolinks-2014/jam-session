class NeighborhoodsController < ApplicationController

  def show
    @neighborhood = Neighborhood.find_by(params[:id])
    @users = User.find_by(params[:neighborhood_id])
    
  end
  # def show
  #   slug = params[:neighborhood].split("-").map {|w| w.capitalize}.join(" ")
  #   @neighborhood = Neighborhood.find_by_name(slug)
  # end
end

