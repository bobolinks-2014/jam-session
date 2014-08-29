require 'rails_helper'

RSpec.describe HomeController, :type => :controller do
  context 'when homepage is loaded' do
      it 'loads the page' do
        get :index
        expect(response.status).to eq 200
      end
    end
end




