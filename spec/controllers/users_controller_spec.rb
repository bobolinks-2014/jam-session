require 'rails_helper'

RSpec.describe UsersController, :type => :controller do
  let(:hood) {Neighborhood.create!(name: "River North")}
  let(:user) {User.create!(first_name: "Christopher",
          last_name: "Walken",
          email: "needmore@cowbell.org",
          password: "testing",
          password_confirmation: "testing",
          img_url: 'http://i.ytimg.com/vi/ZNT9E3yNaDU/maxresdefault.jpg',
          description: 'I got a fevah, and the only prescription...is more cowbell',
          neighborhood: hood)}

  describe "#new" do
    it "assigns the user to User.new" do
      get :new
      expect(assigns(:user)).to be_a_new(User)
    end
  end

  pending "#create" do
    it "creates a new user if params are valid" do
        post :create, user: {
          first_name: "Christopher",
          last_name: "Walken",
          email: "needmore@cowbell.org",
          password: "testing",
          password_confirmation: "testing",
          img_url: 'http://i.ytimg.com/vi/ZNT9E3yNaDU/maxresdefault.jpg',
          description: 'I got a fevah, and the only prescription...is more cowbell',
          neighborhood: hood}
        # user.save
      expect{User.all}.to change(User, :count).by(1)
    end
  end

  describe "#edit" do
    it "finds the user to be edited" do
      get :edit, id: user.id
      expect(assigns(:user)).to eq(user)
    end
  end

  pending "#update" do
    it "updates the user" do
      expect {
        put :update, id: user.id, user: {
          first_name: "Christopher",
          last_name: "Walken",
          email: "needmore@cowbell.org",
          password: "testing",
          password_confirmation: "testing",
          img_url: 'http://i.ytimg.com/vi/ZNT9E3yNaDU/maxresdefault.jpg',
          description: 'I got a fevah, and the only prescription...is more cowbell',
          neighborhood: hood
        }
      }.to change {user.reload.last_name}.to('Walken')
    end
  end

  describe "#show" do
    it 'shows the user' do
      get :show, id: user.id
      expect(assigns(:user)).to eq(user)
    end
  end
end
