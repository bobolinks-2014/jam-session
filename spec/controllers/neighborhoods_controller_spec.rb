require 'rails_helper'

RSpec.describe NeighborhoodsController, :type => :controller do
  context 'when user visits neighborhood page' do
      it "opens to the neighborhood's page" do
        visit '/hyde-park'
        expect(response.status).to eq 200
      end
    end
end
