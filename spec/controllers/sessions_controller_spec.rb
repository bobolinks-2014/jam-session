require 'rails_helper'

RSpec.describe SessionsController, :type => :controller do

  before(:each) do
    hood = Neighborhood.create(name: "South Loop")
    @user = User.create!(first_name: "Bobo", last_name: "Link", email: "bobo@bobo.com", password: "testing", password_confirmation: "testing", neighborhood: hood)
  end

  describe "#login" do
    it "should successfully create a session and redirect to index" do
      expect(session[:user_id]).to be_nil
      post :login, user: {:email => "bobo@bobo.com", :password => "testing"}
      expect(session[:user_id]).to eq(@user.id)
      expect(response).to redirect_to(root_path)
    end

    it "should redirect the user to the root url if login is unsuccessful" do
      post :login, user: {:email => "bobo@bobo.com", :password => "tweet"}
      expect(response).to redirect_to(root_path)
    end
  end

  describe "#logout" do
    it "should successfully clear a session and redirect to index" do
      post :login, user: {:email => "bobo@bobo.com", :password => "testing"}
      expect(session[:user_id]).to eq(@user.id)
      get :logout
      expect(session[:user_id]).to be_nil
    end
  end
end
