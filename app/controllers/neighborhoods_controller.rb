class NeighborhoodsController < ApplicationController
  def show
    
    slug = params[:neighborhood].split("-").map {|w| w.capitalize}.join(" ")
    @neighborhood = Neighborhood.find_by_name(slug)

  end
end

