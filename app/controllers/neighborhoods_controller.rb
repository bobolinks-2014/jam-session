class NeighborhoodsController < ApplicationController

  def show
    @neighborhood = Neighborhood.find_by(params[:id])
  end
  # def show
  #   slug = params[:neighborhood].split("-").map {|w| w.capitalize}.join(" ")
  #   @neighborhood = Neighborhood.find_by_name(slug)
  # end
end

