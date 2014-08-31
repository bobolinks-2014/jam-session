require 'rails_helper'

feature 'User browsing the website' do

	before :each do 
		@user = User.new(email: "mclovin@example.com", password: "mclovin") 
	end

	feature 'User on homepage' do
		context "on homepage" do
			subject { @user }
			it { should respond_to(:email) }
			it { should respond_to(:password) }
		end
	end

	feature 'Signing in' do
		background do
			hood = Neighborhood.create(name: "Wicker Park")
			User.create!(:first_name => 'yo', :last_name => 'lo', :email => 'user@example.com', :password => 'caplin', :neighborhood => hood)
		end

		scenario "Signing in with correct credentials" do
			visit '/'
			within("form") do
				fill_in 'email', :with => 'user@example.com'
				fill_in 'password', :with => 'caplin'
			end
			click_button 'Sign In'
			expect(page).to have_content 'Logout'
		end
	end

	feature 'Clicking on neighborhood' do
		it "will go to a neighborhood page" do
			visit '/rogers-park'
			# my_link = find(:xpath, "//a[contains(@href,'/rogers-park')]")
			# my_link.click

		end
	end

end



